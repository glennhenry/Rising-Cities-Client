package net.bigpoint.cityrama.model.improvement
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IImprovable;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementEfficiencyVo;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.model.inventory.InventoryProxy;
   import net.bigpoint.cityrama.model.inventory.vo.InventoryItemVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigImprovementDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ImprovementDTO;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class ImprovementProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "ImprovementProxy";
      
      private var _configProxy:GameConfigProxy;
      
      private var _playfieldObjProxy:PlayfieldObjectsProxy;
      
      private var _inventoryProxy:InventoryProxy;
      
      public function ImprovementProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
      }
      
      public static function getCompletePercentValueForTag(param1:BillboardObjectVo, param2:String) : Number
      {
         var _loc3_:Number = NaN;
         var _loc4_:ImprovementEfficiencyVo = null;
         var _loc5_:ImprovementVo = null;
         if(param1 is IImprovable)
         {
            _loc3_ = 0;
            for each(_loc5_ in (param1 as IImprovable).currentActiveImprovements)
            {
               _loc4_ = _loc5_.getEfficiencyByTag(param2);
               if(_loc4_)
               {
                  _loc3_ += _loc5_.getEfficiencyByTag(param2).value;
               }
            }
            return _loc3_;
         }
         return 0;
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this._configProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         this._playfieldObjProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         this._inventoryProxy = facade.retrieveProxy(InventoryProxy.NAME) as InventoryProxy;
      }
      
      public function buildImprovementVo(param1:ImprovementDTO) : ImprovementVo
      {
         var _loc2_:ConfigImprovementDTO = this._configProxy.config.improvements[param1.configId];
         if(_loc2_ == null)
         {
            throw new RamaCityError("Unknown Improvement config!");
         }
         return new ImprovementVo(param1,_loc2_);
      }
      
      public function updateImprovement(param1:ImprovementDTO) : void
      {
         var _loc4_:Vector.<ImprovementVo> = null;
         var _loc5_:ImprovementVo = null;
         var _loc6_:ImprovementDTO = null;
         var _loc2_:ImprovementVo = this.buildImprovementVo(param1);
         var _loc3_:BillboardObjectVo = this._playfieldObjProxy.getBillboardById(_loc2_.equippedBuildingId).billboardObjectVo;
         if(_loc3_ is IImprovable)
         {
            _loc4_ = (_loc3_ as IImprovable).currentImprovements;
            for each(_loc5_ in _loc4_)
            {
               if(_loc5_.currentSlotId == _loc2_.currentSlotId)
               {
                  _loc4_.splice(_loc4_.indexOf(_loc5_),1,_loc2_);
                  break;
               }
            }
            for each(_loc6_ in _loc3_.buildingDTO.improvements)
            {
               if(_loc6_.slotId == param1.slotId)
               {
                  _loc3_.buildingDTO.improvements.splice(_loc3_.buildingDTO.improvements.indexOf(_loc6_),1,param1);
                  break;
               }
            }
         }
         sendNotification(ApplicationNotificationConstants.IMPROVEMENT_UPDATED,_loc2_);
      }
      
      public function addImprovementToBillboard(param1:ImprovementDTO) : void
      {
         var _loc4_:Vector.<ImprovementVo> = null;
         var _loc5_:ImprovementVo = null;
         var _loc2_:ImprovementVo = this.buildImprovementVo(param1);
         var _loc3_:BillboardObjectVo = this._playfieldObjProxy.getBillboardById(_loc2_.equippedBuildingId).billboardObjectVo;
         if(_loc3_ is IImprovable)
         {
            _loc4_ = (_loc3_ as IImprovable).currentImprovements;
            for each(_loc5_ in _loc4_)
            {
               if(_loc5_.currentSlotId == _loc2_.currentSlotId)
               {
                  this.updateImprovement(_loc2_.dto);
                  return;
               }
            }
            _loc4_.push(_loc2_);
            _loc3_.buildingDTO.improvements.push(param1);
         }
         sendNotification(ApplicationNotificationConstants.IMPROVEMENT_EQUIPPED);
      }
      
      public function removeImprovementFromBillboard(param1:ImprovementDTO) : void
      {
         var _loc3_:Vector.<ImprovementVo> = null;
         var _loc4_:ImprovementVo = null;
         var _loc2_:BillboardObjectVo = this._playfieldObjProxy.getBillboardById(param1.buildingId).billboardObjectVo;
         if(_loc2_ is IImprovable)
         {
            _loc3_ = (_loc2_ as IImprovable).currentImprovements;
            for each(_loc4_ in _loc3_)
            {
               if(param1.slotId == _loc4_.currentSlotId)
               {
                  _loc3_.splice(_loc3_.indexOf(_loc4_),1);
                  break;
               }
            }
         }
         sendNotification(ApplicationNotificationConstants.IMPROVEMENT_DELETED);
      }
      
      public function getImprovementVoByConfigId(param1:Number) : ImprovementVo
      {
         var _loc2_:InventoryItemVo = null;
         for each(_loc2_ in this._inventoryProxy.inventoryImprovements)
         {
            if(_loc2_.improvementDTO != null && _loc2_.itemId == param1)
            {
               return this.buildImprovementVo(_loc2_.improvementDTO);
            }
         }
         return this.buildImprovementVo(new ImprovementDTO({"cid":param1}));
      }
   }
}

