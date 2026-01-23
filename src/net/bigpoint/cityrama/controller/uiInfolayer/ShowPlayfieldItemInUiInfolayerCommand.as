package net.bigpoint.cityrama.controller.uiInfolayer
{
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.baseView.emergency.EmergencyProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.globalbalance.GlobalBalanceProxy;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementEfficiencyVo;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.model.player.PlayerGoodsStockProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.server.vo.server.BuildingDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.DecorationVo;
   import net.bigpoint.cityrama.model.server.vo.server.ImprovementDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.PlayfieldItemUiInfolayerContentVo;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.SpecificPlayfieldItemModifiedValueVo;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ShowPlayfieldItemInUiInfolayerCommand extends SimpleCommand
   {
      
      public function ShowPlayfieldItemInUiInfolayerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc12_:PlayfieldItemUiInfolayerContentVo = null;
         var _loc2_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc3_:TimerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         var _loc4_:PlayerGoodsStockProxy = facade.retrieveProxy(PlayerGoodsStockProxy.NAME) as PlayerGoodsStockProxy;
         var _loc5_:PlayerResourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         var _loc6_:Number = Number(param1.getBody().cid);
         var _loc7_:Point = Point(param1.getBody().pt);
         var _loc8_:uint = uint(param1.getBody().lineId);
         var _loc9_:ConfigPlayfieldItemDTO = ConfigPlayfieldItemDTO(param1.getBody().cpidto);
         if(!_loc9_)
         {
            _loc9_ = _loc2_.config.items[_loc6_];
         }
         if(param1.getBody().bDTO)
         {
            var _loc10_:BuildingDTO = BuildingDTO(param1.getBody().bDTO);
         }
         if(param1.getBody().dVo)
         {
            var _loc11_:DecorationVo = DecorationVo(param1.getBody().dVo);
         }
         _loc12_ = new PlayfieldItemUiInfolayerContentVo(_loc8_,_loc7_,_loc9_,null,"",_loc3_.currentTimeStamp);
         _loc12_.permission = _loc4_.getPermissionByConfigId(_loc9_.permissionConfigId);
         _loc12_.userLevel = _loc5_.userLevel;
         if(param1.getBody().isReward)
         {
            _loc12_.isReward = param1.getBody().isReward;
         }
         sendNotification(ApplicationNotificationConstants.SHOW_UI_INFOLAYER,_loc12_,param1.getType());
      }
      
      private function modifyValues(param1:BuildingDTO) : SpecificPlayfieldItemModifiedValueVo
      {
         var _loc8_:PhaseDTO = null;
         var _loc9_:Number = NaN;
         var _loc10_:PhaseDTO = null;
         var _loc11_:GameConfigProxy = null;
         var _loc12_:Vector.<ImprovementVo> = null;
         var _loc13_:ImprovementVo = null;
         var _loc14_:ImprovementDTO = null;
         var _loc15_:Object = null;
         var _loc16_:ConfigOutputDTO = null;
         var _loc2_:SpecificPlayfieldItemModifiedValueVo = new SpecificPlayfieldItemModifiedValueVo();
         var _loc3_:PlayfieldItemUiInfolayerContentVo = new PlayfieldItemUiInfolayerContentVo(0,new Point(),param1.config,param1.currentMasteryChallenge);
         var _loc4_:GlobalBalanceProxy = facade.retrieveProxy(GlobalBalanceProxy.NAME) as GlobalBalanceProxy;
         var _loc5_:* = param1.config.tags.indexOf(ServerTagConstants.RESIDENTIAL) != -1;
         if(_loc5_)
         {
            _loc9_ = Math.ceil(_loc3_.infoLayerConfigPlayfieldItemVo.baseharvestOutput.outputAmount * _loc4_.happinessOutputModifier);
         }
         var _loc6_:Number = _loc3_.infoLayerConfigPlayfieldItemVo.energyValue;
         var _loc7_:Number = _loc3_.infoLayerConfigPlayfieldItemVo.moodValue;
         if(param1.activePhases.length)
         {
            for each(_loc10_ in param1.activePhases)
            {
               if(_loc10_)
               {
                  if(_loc10_.config.phaseType == ServerPhaseTypes.RESIDENTIAL || _loc10_.config.phaseType == ServerPhaseTypes.PRODUCTION)
                  {
                     _loc8_ = _loc10_;
                     break;
                  }
               }
            }
         }
         if(_loc8_)
         {
            _loc2_.modTimerCycle = Math.max(_loc8_.expirationTime - param1.lastUpdatedTimeStamp,0);
            if(_loc2_.modTimerCycle > _loc8_.config.durationConfig.duration)
            {
               _loc2_.modTimerCycle = 0;
            }
            _loc2_.harvestReady = _loc2_.modTimerCycle <= 0;
         }
         if(param1.improvements.length > 0)
         {
            _loc11_ = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
            _loc12_ = new Vector.<ImprovementVo>();
            for each(_loc14_ in param1.improvements)
            {
               _loc13_ = new ImprovementVo(_loc14_,_loc11_.config.improvements[_loc14_.configId]);
               if(_loc13_.runtime == -1 || _loc13_.expirationTime > param1.lastUpdatedTimeStamp)
               {
                  _loc12_.push(_loc13_);
               }
            }
            if(_loc12_.length)
            {
               if(_loc5_ && Boolean(_loc9_))
               {
                  _loc9_ += _loc9_ * this.getImprovementPercentValue(_loc12_,ServerTagConstants.IM_RESIDENTIAL_BASIC_EFFICIENCY);
               }
               _loc6_ += _loc6_ * this.getImprovementPercentValue(_loc12_,ServerTagConstants.IM_ENERGY_CONSUMPTION_EFFICIENCY);
               _loc7_ += _loc7_ * this.getImprovementPercentValue(_loc12_,ServerTagConstants.IM_MOOD_CONSUMPTION_EFFICIENCY);
            }
         }
         if(_loc5_ && Boolean(_loc9_))
         {
            _loc15_ = new Object();
            _loc15_.t = _loc3_.infoLayerConfigPlayfieldItemVo.baseharvestOutput.type;
            _loc15_.cid = _loc3_.infoLayerConfigPlayfieldItemVo.baseharvestOutput.configId;
            _loc15_.o = Math.ceil(_loc9_);
            _loc16_ = new ConfigOutputDTO(_loc15_);
            _loc16_.resourceConfig = _loc3_.infoLayerConfigPlayfieldItemVo.baseharvestOutput.resourceConfig;
            _loc2_.modBaseHarvestOutput = _loc16_;
         }
         _loc2_.modEnergyValue = Math.ceil(_loc6_);
         _loc2_.modMoodValue = Math.ceil(_loc7_);
         return _loc2_;
      }
      
      private function getImprovementPercentValue(param1:Vector.<ImprovementVo>, param2:String) : Number
      {
         var _loc4_:ImprovementEfficiencyVo = null;
         var _loc5_:ImprovementVo = null;
         for each(_loc5_ in param1)
         {
            _loc4_ = _loc5_.getEfficiencyByTag(param2);
            if(_loc4_)
            {
               var _loc3_:Number = 0 + _loc4_.value;
            }
         }
         return 0;
      }
   }
}

