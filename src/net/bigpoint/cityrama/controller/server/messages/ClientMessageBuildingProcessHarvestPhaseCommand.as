package net.bigpoint.cityrama.controller.server.messages
{
   import flash.net.SharedObject;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.detailViews.MainLayerProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ProductionFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ResidentialFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ScheduledDropFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.TownHallFieldObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.good.vo.ProductionGoodObjectVo;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsMenuProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigResourceDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.RandomHarvestPhaseDTO;
   import net.bigpoint.cityrama.model.shop.NeedVo;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.InformationFloaterManager;
   import net.bigpoint.util.RandomUtilities;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageBuildingProcessHarvestPhaseCommand extends SimpleCommand implements ICommand
   {
      
      public function ClientMessageBuildingProcessHarvestPhaseCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:ServerCommunicationProxy = null;
         var _loc6_:Object = null;
         var _loc7_:PlayfieldObjectsProxy = null;
         var _loc8_:BillboardObject = null;
         var _loc9_:ConfigPhaseDTO = null;
         var _loc10_:String = null;
         var _loc11_:PhaseDTO = null;
         var _loc12_:MessageVo = null;
         var _loc13_:ProductionFieldObjectVo = null;
         var _loc14_:SharedObject = null;
         var _loc15_:Vector.<ProductionGoodObjectVo> = null;
         var _loc16_:ProductionGoodObjectVo = null;
         var _loc17_:ProductionGoodObjectVo = null;
         var _loc18_:String = null;
         var _loc19_:String = null;
         var _loc20_:Boolean = false;
         var _loc21_:String = null;
         var _loc22_:ConfigOutputDTO = null;
         var _loc23_:Boolean = false;
         var _loc24_:NeedVo = null;
         var _loc25_:ConfigPhaseDTO = null;
         var _loc26_:ConfigResourceDTO = null;
         var _loc27_:Object = null;
         var _loc28_:ConfigOutputDTO = null;
         var _loc29_:RandomHarvestPhaseDTO = null;
         var _loc30_:ConfigOutputDTO = null;
         var _loc31_:ConfigOutputDTO = null;
         var _loc32_:Object = null;
         var _loc33_:ConfigOutputDTO = null;
         var _loc2_:Object = param1.getBody();
         var _loc3_:BillboardObjectVo = _loc2_.vo;
         if(_loc3_)
         {
            _loc4_ = false;
            if(_loc2_.silent)
            {
               _loc4_ = Boolean(_loc2_.silent);
            }
            _loc5_ = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
            _loc6_ = new Object();
            _loc6_.bid = _loc3_.buildingDTO.id;
            _loc7_ = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
            _loc8_ = _loc7_.getBillboardById(_loc6_.bid);
            if(_loc3_ is ResidentialFieldObjectVo)
            {
               _loc10_ = ServerPhaseTypes.RESIDENTIAL;
            }
            else if(_loc3_ is TownHallFieldObjectVo || _loc3_ is ScheduledDropFieldObjectVo)
            {
               _loc10_ = ServerPhaseTypes.RANDOM_REWARD_HARVEST;
            }
            else if(_loc3_ is ProductionFieldObjectVo)
            {
               _loc13_ = _loc3_ as ProductionFieldObjectVo;
               _loc10_ = ServerPhaseTypes.PRODUCTION;
               _loc14_ = SharedObject.getLocal(OptionsMenuProxy.NAME);
               if(_loc14_)
               {
                  _loc15_ = MainLayerProxy(facade.retrieveProxy(MainLayerProxy.NAME)).getProductionOptions(_loc13_);
                  for each(_loc17_ in _loc15_)
                  {
                     if(_loc17_.config.id == _loc13_.currentGoodInProduction.id)
                     {
                        _loc16_ = _loc17_;
                        break;
                     }
                  }
                  if(_loc16_)
                  {
                     _loc14_.data[_loc13_.buildingDTO.id] = _loc15_.indexOf(_loc16_);
                  }
               }
            }
            for each(_loc11_ in _loc3_.buildingDTO.activePhases)
            {
               if(_loc11_.config.phaseType == _loc10_)
               {
                  _loc6_.pid = _loc11_.phaseId;
                  _loc9_ = _loc11_.config;
                  if(_loc10_ == ServerPhaseTypes.RESIDENTIAL)
                  {
                     _loc18_ = (_loc8_ as ResidentialFieldObject).residentialFieldObjectVo.currentResidentType;
                     _loc21_ = "";
                     for each(_loc22_ in _loc11_.config.listEntryOutputs)
                     {
                        if(_loc22_.resourceConfig != null)
                        {
                           if(_loc22_.resourceConfig.type != ServerResConst.RESOURCE_EXPERIENCE)
                           {
                              _loc19_ = _loc22_.resourceConfig.type;
                              break;
                           }
                        }
                     }
                     switch(_loc18_)
                     {
                        case ServerResConst.RESOURCE_RICHMEN:
                           if(_loc19_ != ServerResConst.RESOURCE_VIRTUALCURRENCY)
                           {
                              _loc20_ = true;
                              _loc21_ = ServerResConst.RESOURCE_VIRTUALCURRENCY;
                           }
                           break;
                        case ServerResConst.RESOURCE_ACADEMICS:
                           if(_loc19_ != ServerResConst.RESOURCE_EDUCATIONPOINTS)
                           {
                              _loc20_ = true;
                              _loc21_ = ServerResConst.RESOURCE_EDUCATIONPOINTS;
                           }
                           break;
                        case ServerResConst.RESOURCE_WORKERS:
                           if(_loc19_ != ServerResConst.RESOURCE_PRODUCTIONPOINTS)
                           {
                              _loc20_ = true;
                              _loc21_ = ServerResConst.RESOURCE_PRODUCTIONPOINTS;
                           }
                     }
                     if(_loc20_ && _loc21_ != "")
                     {
                        for each(_loc24_ in (_loc8_ as ResidentialFieldObject).residentialFieldObjectVo.residentialNeeds)
                        {
                           if(_loc24_.isSatisfied)
                           {
                              _loc23_ = true;
                              break;
                           }
                        }
                        if(_loc23_)
                        {
                           _loc25_ = _loc11_.config.clone();
                           _loc26_ = this.getConfigResourceDTO(_loc21_);
                           _loc27_ = new Object();
                           _loc27_.t = ServerOutputConstants.RESOURCE;
                           _loc27_.o = InformationFloaterManager.EMPTY_RESOURCE_AMOUNT;
                           _loc27_.cid = _loc26_.id;
                           _loc28_ = new ConfigOutputDTO(_loc27_);
                           _loc28_.resourceConfig = _loc26_;
                           _loc25_.listEntryOutputs.push(_loc28_);
                           _loc9_ = _loc25_;
                        }
                     }
                  }
                  else if(_loc10_ == ServerPhaseTypes.RANDOM_REWARD_HARVEST)
                  {
                     if(_loc11_.config.phaseType == ServerPhaseTypes.RANDOM_REWARD_HARVEST && _loc11_ is RandomHarvestPhaseDTO)
                     {
                        _loc29_ = _loc11_ as RandomHarvestPhaseDTO;
                        ConfigFactory.buildRandomHarvestPhaseDTO(_loc29_);
                        _loc9_ = new ConfigPhaseDTO(new Object());
                        for each(_loc30_ in _loc29_.rewards)
                        {
                           _loc9_.listEntryOutputs.push(_loc30_);
                        }
                        for each(_loc33_ in _loc11_.config.listEntryOutputs)
                        {
                           if(Boolean(_loc33_.resourceConfig) && _loc33_.resourceConfig.type == ServerResConst.RESOURCE_EXPERIENCE)
                           {
                              _loc32_ = new Object();
                              _loc32_.t = _loc33_.type;
                              _loc32_.cid = _loc33_.configId;
                              _loc32_.o = this.calculatedOutputAmount(_loc33_);
                              _loc31_ = new ConfigOutputDTO(_loc32_);
                              _loc31_.resourceConfig = _loc33_.resourceConfig;
                              _loc9_.listEntryOutputs.push(_loc31_);
                           }
                        }
                     }
                  }
                  if(!_loc4_)
                  {
                     _loc3_.informationFloaterPhase = _loc9_;
                     if(OptionsGlobalVariables.getInstance().showDropIcons)
                     {
                        facade.sendNotification(ApplicationNotificationConstants.EVALUATE_DROPS,{
                           "tO":_loc8_,
                           "cP":_loc9_
                        });
                     }
                  }
               }
            }
            _loc12_ = _loc5_.createMessage(_loc6_,ServerMessageConstants.PLAYFIELD_BUILDING_PROCESSPHASE);
            _loc5_.sendMessage(_loc12_);
         }
      }
      
      private function calculatedOutputAmount(param1:ConfigOutputDTO) : Number
      {
         var _loc2_:PlayerResourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         var _loc3_:Number = param1.outputAmount * Math.pow(_loc2_.userLevel,param1.multiplier);
         if(_loc3_ >= 100)
         {
            _loc3_ = RandomUtilities.getSignificantDigits(_loc3_,2);
         }
         else
         {
            _loc3_ = Math.round(_loc3_ * 0.2) * 5;
         }
         if(_loc3_ < 1)
         {
            _loc3_ = 1;
         }
         return _loc3_;
      }
      
      private function getConfigResourceDTO(param1:String) : ConfigResourceDTO
      {
         var _loc2_:GameConfigProxy = GameConfigProxy(facade.retrieveProxy(GameConfigProxy.NAME));
         var _loc3_:Number = Number(_loc2_.resourcesIds[param1]);
         return _loc2_.resources[_loc3_];
      }
   }
}

