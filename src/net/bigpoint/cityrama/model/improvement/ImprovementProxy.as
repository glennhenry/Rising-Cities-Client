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
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         NAME = "ImprovementProxy";
      }
      
      private var _configProxy:GameConfigProxy;
      
      private var _playfieldObjProxy:PlayfieldObjectsProxy;
      
      private var _inventoryProxy:InventoryProxy;
      
      public function ImprovementProxy(param1:String = null, param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            super(param1,param2);
         }
      }
      
      public static function getCompletePercentValueForTag(param1:BillboardObjectVo, param2:String) : Number
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc3_:* = NaN;
         var _loc4_:ImprovementEfficiencyVo = null;
         var _loc5_:ImprovementVo = null;
         if(_loc8_ || Boolean(param2))
         {
            if(param1 is IImprovable)
            {
               if(!(_loc9_ && Boolean(_loc3_)))
               {
                  §§push(0);
                  if(_loc8_ || ImprovementProxy)
                  {
                     _loc3_ = §§pop();
                     addr0065:
                     §§push(0);
                  }
                  for each(_loc5_ in (param1 as IImprovable).currentActiveImprovements)
                  {
                     _loc4_ = _loc5_.getEfficiencyByTag(param2);
                     if(!_loc4_)
                     {
                        continue;
                     }
                     if(!(_loc8_ || ImprovementProxy))
                     {
                        continue;
                     }
                     §§push(_loc3_);
                     if(_loc8_)
                     {
                        §§push(§§pop() + _loc5_.getEfficiencyByTag(param2).value);
                        if(!_loc9_)
                        {
                           addr00c7:
                           §§push(§§pop());
                        }
                        _loc3_ = §§pop();
                        continue;
                     }
                     §§goto(addr00c7);
                  }
                  if(_loc8_)
                  {
                     return _loc3_;
                  }
                  §§goto(addr00dc);
               }
               §§goto(addr0065);
            }
            addr00dc:
            return 0;
         }
         §§goto(addr0065);
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.onRegister();
            if(!_loc2_)
            {
               this._configProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
               if(!_loc2_)
               {
                  this._playfieldObjProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
                  if(!_loc2_)
                  {
                     addr005e:
                     this._inventoryProxy = facade.retrieveProxy(InventoryProxy.NAME) as InventoryProxy;
                  }
                  return;
               }
            }
         }
         §§goto(addr005e);
      }
      
      public function buildImprovementVo(param1:ImprovementDTO) : ImprovementVo
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:ConfigImprovementDTO = this._configProxy.config.improvements[param1.configId];
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ == null)
            {
               if(!(_loc3_ && _loc3_))
               {
                  §§goto(addr0067);
               }
            }
            return new ImprovementVo(param1,_loc2_);
         }
         addr0067:
         throw new RamaCityError("Unknown Improvement config!");
      }
      
      public function updateImprovement(param1:ImprovementDTO) : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc4_:Vector.<ImprovementVo> = null;
         var _loc5_:ImprovementVo = null;
         var _loc6_:ImprovementDTO = null;
         var _loc2_:ImprovementVo = this.buildImprovementVo(param1);
         var _loc3_:BillboardObjectVo = this._playfieldObjProxy.getBillboardById(_loc2_.equippedBuildingId).billboardObjectVo;
         if(_loc10_ || Boolean(this))
         {
            if(_loc3_ is IImprovable)
            {
               addr005d:
               _loc4_ = (_loc3_ as IImprovable).currentImprovements;
               var _loc7_:int = 0;
               for each(_loc5_ in _loc4_)
               {
                  if(_loc5_.currentSlotId == _loc2_.currentSlotId)
                  {
                     if(!(_loc9_ && Boolean(_loc2_)))
                     {
                        _loc4_.splice(_loc4_.indexOf(_loc5_),1,_loc2_);
                     }
                     break;
                  }
               }
               if(!_loc9_)
               {
                  _loc7_ = 0;
               }
               for each(_loc6_ in _loc3_.buildingDTO.improvements)
               {
                  if(_loc6_.slotId == param1.slotId)
                  {
                     if(!_loc9_)
                     {
                        _loc3_.buildingDTO.improvements.splice(_loc3_.buildingDTO.improvements.indexOf(_loc6_),1,param1);
                     }
                     break;
                  }
               }
            }
            sendNotification(ApplicationNotificationConstants.IMPROVEMENT_UPDATED,_loc2_);
            return;
         }
         §§goto(addr005d);
      }
      
      public function addImprovementToBillboard(param1:ImprovementDTO) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc4_:Vector.<ImprovementVo> = null;
         var _loc5_:ImprovementVo = null;
         var _loc2_:ImprovementVo = this.buildImprovementVo(param1);
         var _loc3_:BillboardObjectVo = this._playfieldObjProxy.getBillboardById(_loc2_.equippedBuildingId).billboardObjectVo;
         if(_loc8_)
         {
            if(_loc3_ is IImprovable)
            {
               §§goto(addr004b);
            }
            sendNotification(ApplicationNotificationConstants.IMPROVEMENT_EQUIPPED);
            return;
         }
         addr004b:
         _loc4_ = (_loc3_ as IImprovable).currentImprovements;
         var _loc6_:int = 0;
         var _loc7_:* = _loc4_;
         while(true)
         {
            for each(_loc5_ in _loc7_)
            {
               if(_loc5_.currentSlotId == _loc2_.currentSlotId)
               {
                  if(_loc9_)
                  {
                     break;
                  }
                  this.updateImprovement(_loc2_.dto);
                  if(_loc8_)
                  {
                     break;
                  }
               }
               continue;
            }
            if(_loc8_ || Boolean(param1))
            {
               _loc4_.push(_loc2_);
               if(!_loc9_)
               {
                  _loc3_.buildingDTO.improvements.push(param1);
               }
            }
         }
      }
      
      public function removeImprovementFromBillboard(param1:ImprovementDTO) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc3_:Vector.<ImprovementVo> = null;
         var _loc4_:ImprovementVo = null;
         var _loc2_:BillboardObjectVo = this._playfieldObjProxy.getBillboardById(param1.buildingId).billboardObjectVo;
         if(_loc8_ || Boolean(param1))
         {
            if(_loc2_ is IImprovable)
            {
               addr0055:
               _loc3_ = (_loc2_ as IImprovable).currentImprovements;
               for each(_loc4_ in _loc3_)
               {
                  if(!_loc7_)
                  {
                     if(param1.slotId != _loc4_.currentSlotId)
                     {
                        continue;
                     }
                     if(_loc7_)
                     {
                        break;
                     }
                  }
                  _loc3_.splice(_loc3_.indexOf(_loc4_),1);
                  break;
               }
            }
            sendNotification(ApplicationNotificationConstants.IMPROVEMENT_DELETED);
            return;
         }
         §§goto(addr0055);
      }
      
      public function getImprovementVoByConfigId(param1:Number) : ImprovementVo
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:InventoryItemVo = null;
         var _loc3_:int = 0;
         var _loc4_:* = this._inventoryProxy.inventoryImprovements;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc5_)
               {
                  §§push(_loc2_.improvementDTO == null);
                  if(!_loc6_)
                  {
                     §§push(!§§pop());
                     if(!(_loc6_ && Boolean(param1)))
                     {
                        addr0065:
                        var _temp_2:* = §§pop();
                        §§push(_temp_2);
                        if(_temp_2)
                        {
                           if(_loc5_)
                           {
                              addr0070:
                              §§pop();
                              if(_loc6_)
                              {
                                 continue;
                              }
                              addr0084:
                              §§push(_loc2_.itemId == param1);
                           }
                        }
                        if(§§pop())
                        {
                           if(!_loc6_)
                           {
                              break;
                           }
                        }
                        continue;
                     }
                     §§goto(addr0070);
                  }
                  §§goto(addr0065);
               }
               §§goto(addr0084);
            }
            return this.buildImprovementVo(new ImprovementDTO({"cid":param1}));
         }
         return this.buildImprovementVo(_loc2_.improvementDTO);
      }
   }
}

