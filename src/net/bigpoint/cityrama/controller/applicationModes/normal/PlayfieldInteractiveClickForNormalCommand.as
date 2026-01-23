package net.bigpoint.cityrama.controller.applicationModes.normal
{
   import com.greensock.TweenMax;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.quest.ClickTaskNotificationConstants;
   import net.bigpoint.cityrama.model.FeatureProxy;
   import net.bigpoint.cityrama.model.baseView.BasementViewProxy;
   import net.bigpoint.cityrama.model.departmentBook.DepartmentTabProxy;
   import net.bigpoint.cityrama.model.detailViews.MainLayerProxy;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldExpansionsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldInteractiveProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IGameObjectVo;
   import net.bigpoint.cityrama.model.game.KeyboardInputActionProxy;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.MasteryBonusDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.departmentBook.EmergencyDepartmentBookMediator;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.EmergencyDepartmentBook;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.AcademyFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.BoulderFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.CinemaFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.CitySquareFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.DecorationFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ExpansionFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.InfrastructureBuildingFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.MysteryBuildingFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ProductionFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ScheduledDropFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.SpecialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.TownHallFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PlayfieldSwitchFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBuildUpManagerImplementation;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IEventDrop;
   import net.bigpoint.cityrama.view.productionBook.ProductionPopupMediator;
   import net.bigpoint.cityrama.view.productionBook.ui.components.ProductionPopup;
   import net.bigpoint.cityrama.view.schoolBook.SchoolBookMediator;
   import net.bigpoint.cityrama.view.schoolBook.ui.components.SchoolBook;
   import net.bigpoint.cityrama.view.shopBook.ShopBookMediator;
   import net.bigpoint.cityrama.view.shopBook.ui.components.ShopPopup;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class PlayfieldInteractiveClickForNormalCommand extends SimpleCommand
   {
      
      public function PlayfieldInteractiveClickForNormalCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc11_:PlayfieldObjectsProxy = null;
         var _loc12_:ExpansionFieldObject = null;
         var _loc13_:IGameObjectVo = null;
         var _loc14_:SpecialFieldObject = null;
         var _loc15_:Object = null;
         var _loc16_:ExpansionFieldObject = null;
         var _loc2_:EventProxy = super.facade.retrieveProxy(EventProxy.NAME) as EventProxy;
         var _loc3_:PlayfieldInteractiveProxy = PlayfieldInteractiveProxy(facade.retrieveProxy(PlayfieldInteractiveProxy.NAME));
         var _loc4_:SoundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         var _loc5_:PlayfieldExpansionsProxy = facade.retrieveProxy(PlayfieldExpansionsProxy.NAME) as PlayfieldExpansionsProxy;
         var _loc6_:BasementViewProxy = facade.retrieveProxy(BasementViewProxy.NAME) as BasementViewProxy;
         var _loc7_:KeyboardInputActionProxy = super.facade.retrieveProxy(KeyboardInputActionProxy.NAME) as KeyboardInputActionProxy;
         var _loc8_:PlayerResourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         var _loc9_:FeatureProxy = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
         if(_loc3_.clickObject != null)
         {
            facade.sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_HIDE);
            if(_loc3_.clickObject is PlayfieldSwitchFieldObject)
            {
               sendNotification(ApplicationNotificationConstants.PLAYFIELD_SWITCH_FIELD_OBJECT_CLICKED,_loc3_.clickObject);
            }
            if(_loc3_.clickObject is BillboardObject)
            {
               if((_loc3_.clickObject as BillboardObject).billboardObjectVo.isExpansionObject)
               {
                  if(_loc8_.userLevel >= _loc9_.expansionBuyUnlockLevel)
                  {
                     _loc11_ = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
                     for each(_loc12_ in _loc11_.expansionList)
                     {
                        for each(_loc13_ in _loc12_.expansionFieldObjectVo.temporaryAdded)
                        {
                           if(_loc13_ == (_loc3_.clickObject as BillboardObject).billboardObjectVo)
                           {
                              if(_loc5_.isBuyableExpansions(_loc12_.expansionFieldObjectVo.configPlayfieldItemVo.id))
                              {
                                 facade.sendNotification(MiniLayerConstants.OPEN_MINI_EXPANSION,_loc12_);
                                 return;
                              }
                           }
                        }
                     }
                  }
                  return;
               }
               if(_loc3_.clickObject is SpecialFieldObject)
               {
                  _loc14_ = _loc3_.clickObject as SpecialFieldObject;
                  if(_loc14_ is CitySquareFieldObject && !_loc7_.shiftIsPressed)
                  {
                     sendNotification(ApplicationNotificationConstants.CITYSQUARE_CLICKED);
                  }
                  if(_loc14_ is TownHallFieldObject)
                  {
                     if(facade.hasCommand(ClickTaskNotificationConstants.TOWNHALL_CLICKED))
                     {
                        (_loc14_ as TownHallFieldObject).townHallFieldObjectVo.userInteractionLocked = true;
                        sendNotification(ClickTaskNotificationConstants.TOWNHALL_CLICKED);
                     }
                     else if(_loc14_.specialFieldObjectVo.isReadyForUpgrade() && !_loc7_.shiftIsPressed)
                     {
                        _loc15_ = {};
                        _loc15_.billboardVo = _loc14_.specialFieldObjectVo;
                        sendNotification(ApplicationNotificationConstants.OPEN_CONSTRUCTION_LAYER,_loc14_);
                     }
                     else if(_loc14_.billboardObjectVo.openConstructionLayer && !_loc7_.shiftIsPressed)
                     {
                        sendNotification(ApplicationNotificationConstants.OPEN_CONSTRUCTION_LAYER,_loc14_);
                     }
                  }
                  else if(_loc14_ is CinemaFieldObject && _loc14_.specialFieldObjectVo.isConnectedToStreet)
                  {
                     if(_loc14_.billboardObjectVo.isReadyToInaugurate)
                     {
                        this.inaugurateBuilding(_loc14_,_loc7_.shiftIsPressed);
                        return;
                     }
                     sendNotification(ApplicationNotificationConstants.OPEN_CINEMA_LAYER);
                  }
                  else if(_loc14_ is ScheduledDropFieldObject)
                  {
                     if((_loc14_ as ScheduledDropFieldObject).scheduledDropFieldObjectVo.isHarvestReady && !(_loc14_ as ScheduledDropFieldObject).scheduledDropFieldObjectVo.isAnimationPlaying)
                     {
                        if((_loc14_ as ScheduledDropFieldObject).scheduledDropFieldObjectVo.isConnectedToStreet)
                        {
                           _loc14_.specialFieldObjectVo.userInteractionLocked = true;
                           sendNotification(ApplicationNotificationConstants.SHOW_SCHEDULED_DROP_ANIMATION,{"buildingId":_loc14_.specialFieldObjectVo.buildingDTO.id});
                           TweenMax.delayedCall(2,this.evaluateDrops,[_loc14_ as BillboardObject]);
                        }
                     }
                  }
               }
               if(_loc3_.clickObject is ExpansionFieldObject && !_loc7_.shiftIsPressed)
               {
                  if(_loc8_.userLevel >= _loc9_.expansionBuyUnlockLevel)
                  {
                     _loc16_ = _loc3_.clickObject as ExpansionFieldObject;
                     if(_loc5_.isBuyableExpansions(_loc16_.expansionFieldObjectVo.configPlayfieldItemVo.id))
                     {
                        facade.sendNotification(MiniLayerConstants.OPEN_MINI_EXPANSION,_loc16_);
                     }
                  }
               }
               if(_loc3_.clickObject is BoulderFieldObject && !(_loc3_.clickObject as BoulderFieldObject).boulderObjectVo.userInteractionLocked)
               {
                  sendNotification(ApplicationNotificationConstants.BOULDER_CLICKED,_loc3_.clickObject);
                  return;
               }
               if(_loc3_.clickObject is IBuildUpManagerImplementation)
               {
                  var _loc10_:BillboardObject = BillboardObject(_loc3_.clickObject);
                  if(_loc6_.isBaseViewEnabled)
                  {
                     if(Boolean(null.billboardObjectVo.isConnectedToStreet) || _loc3_.clickObject is SpecialFieldObject)
                     {
                        _loc6_.changeBaseViewForSingleBillboard(null);
                        if(_loc3_.oldClickObject != null)
                        {
                           var _loc17_:BillboardObject = BillboardObject(_loc3_.oldClickObject);
                           _loc6_.changeBaseViewForSingleBillboard(null);
                           _loc3_.oldClickObject = null;
                        }
                        _loc3_.oldClickObject = _loc3_.clickObject;
                     }
                  }
                  if(null.billboardObjectVo.isConnectedToStreet)
                  {
                     if(Boolean(null.billboardObjectVo.openConstructionLayer) && !_loc7_.shiftIsPressed)
                     {
                        if(null is MysteryBuildingFieldObject)
                        {
                           sendNotification(MiniLayerConstants.OPEN_MINI_MYSTERY_CONSTRUCTION,null);
                        }
                        else
                        {
                           sendNotification(ApplicationNotificationConstants.OPEN_CONSTRUCTION_LAYER,null);
                        }
                     }
                     else if(null is MysteryBuildingFieldObject && Boolean(null.billboardObjectVo.isHarvestReady))
                     {
                        sendNotification(ApplicationNotificationConstants.START_MYSTERYBUILDING_UNWRAP,null);
                     }
                     else if(null.billboardObjectVo.isHarvestReady)
                     {
                        if(null.billboardObjectVo.isReadyForMasteryTraitSelection)
                        {
                           var _loc18_:MasteryBonusDTO = (null as ResidentialFieldObject).residentialFieldObjectVo.buildingDTO.currentMasteryBonus;
                           facade.sendNotification(ApplicationNotificationConstants.OPEN_MASTERY_TRAIT_SELECTION_LAYER,null.configBonusId);
                        }
                        else
                        {
                           sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_HARVESTPHASE_PROCESS,{"vo":null.billboardObjectVo});
                           _loc4_.playBuildingClick();
                           if(null.billboardObjectVo is IEventDrop)
                           {
                              if(null is ProductionFieldObject && _loc2_.currentRunningEventQuestLocaleId != "")
                              {
                                 for each(var _loc19_ in null.billboardObjectVo.activePhases)
                                 {
                                    for each(var _loc20_ in null.config.listEntryOutputs)
                                    {
                                       if(_loc20_.goodConfig != null && Boolean(null.goodConfig.isEventGood))
                                       {
                                          (null.billboardObjectVo as IEventDrop).currentEventLocaleId = _loc2_.currentRunningEventQuestLocaleId;
                                       }
                                    }
                                 }
                              }
                              else if(null is ResidentialFieldObject && _loc2_.currentRunningEventQuestLocaleId != "")
                              {
                                 (null.billboardObjectVo as IEventDrop).currentEventLocaleId = _loc2_.currentRunningEventQuestLocaleId;
                              }
                           }
                           sendNotification(ApplicationNotificationConstants.PREPARE_BILLBOARDOBJECT_FLOATERMANAGER,null);
                           null.invalidateInformationFloaterManager();
                           null.invalidateIconStateManager(true);
                           null.billboardObjectVo.userInteractionLocked = true;
                        }
                     }
                     else if(!null.billboardObjectVo.isHarvestReady)
                     {
                        if(null.billboardObjectVo.isReadyToInaugurate)
                        {
                           this.inaugurateBuilding(null,_loc7_.shiftIsPressed);
                        }
                        else if(null.billboardObjectVo.isReadyForMasteryTraitSelection)
                        {
                           var _loc21_:MasteryBonusDTO = (null as ResidentialFieldObject).residentialFieldObjectVo.buildingDTO.currentMasteryBonus;
                           facade.sendNotification(ApplicationNotificationConstants.OPEN_MASTERY_TRAIT_SELECTION_LAYER,null.configBonusId);
                        }
                        else if(!(_loc3_.clickObject as BillboardObject).billboardObjectVo.isExpansionObject)
                        {
                           if(null is ResidentialFieldObject && !_loc7_.shiftIsPressed)
                           {
                              sendNotification(ApplicationNotificationConstants.OPEN_RESIDENTIALBOOK,{"residential":(null as ResidentialFieldObject).residentialFieldObjectVo});
                           }
                           if(null is ProductionFieldObject && !_loc7_.shiftIsPressed)
                           {
                              this.openProductionPopup(_loc3_.clickObject as ProductionFieldObject);
                           }
                           if(null is ShopFieldObject && !_loc7_.shiftIsPressed)
                           {
                              this.openShopPopup(_loc3_.clickObject as ShopFieldObject);
                           }
                           if(null is InfrastructureBuildingFieldObject && !_loc7_.shiftIsPressed)
                           {
                              this.openDepartmentPopup(_loc3_.clickObject as InfrastructureBuildingFieldObject);
                           }
                           if(null is AcademyFieldObject && !_loc7_.shiftIsPressed)
                           {
                              this.openAcademyPopup(_loc3_.clickObject as AcademyFieldObject);
                           }
                        }
                     }
                     (null as IBuildUpManagerImplementation).invalidateBuildUpManager();
                     null.invalidateEstablishedManager();
                  }
               }
               else if(_loc3_.clickObject is DecorationFieldObject || _loc3_.clickObject is CinemaFieldObject || _loc3_.clickObject is CitySquareFieldObject)
               {
                  if(_loc6_.isBaseViewEnabled)
                  {
                     _loc6_.changeBaseViewForSingleBillboard(_loc3_.clickObject as BillboardObject);
                     if(_loc3_.oldClickObject != null)
                     {
                        _loc6_.changeBaseViewForSingleBillboard(BillboardObject(_loc3_.oldClickObject));
                        _loc3_.oldClickObject = null;
                     }
                     _loc3_.oldClickObject = _loc3_.clickObject;
                  }
               }
            }
         }
      }
      
      private function inaugurateBuilding(param1:BillboardObject, param2:Boolean) : void
      {
         var _loc3_:ConfigPhaseDTO = null;
         if(param1 is ResidentialFieldObject && !param2)
         {
            sendNotification(ApplicationNotificationConstants.CHECK_RESIDENT_SELECTION,param1 as ResidentialFieldObject);
         }
         else
         {
            _loc3_ = param1.billboardObjectVo.inaugurationPhase;
            param1.billboardObjectVo.informationFloaterPhase = _loc3_;
            param1.invalidateInformationFloaterManager();
            if(OptionsGlobalVariables.getInstance().showDropIcons)
            {
               if(_loc3_ != null)
               {
                  facade.sendNotification(ApplicationNotificationConstants.EVALUATE_DROPS,{
                     "tO":param1,
                     "cP":_loc3_
                  });
               }
            }
            param1.billboardObjectVo.userInteractionLocked = true;
            sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_INAUGURATE,{"vo":param1.billboardObjectVo});
            sendNotification(ApplicationNotificationConstants.SPAWN_INAUGURATE_CITIZEN,param1.billboardObjectVo);
            sendNotification(ApplicationNotificationConstants.CELEBRATING_CITIZEN,param1.billboardObjectVo);
         }
      }
      
      private function openShopPopup(param1:ShopFieldObject) : void
      {
         var _loc2_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
         _loc2_.modal = true;
         _loc2_.viewClass = ShopPopup;
         _loc2_.mediatorClass = ShopBookMediator;
         _loc2_.mediatorName = ShopBookMediator.NAME;
         var _loc3_:MainLayerProxy = facade.retrieveProxy(MainLayerProxy.NAME) as MainLayerProxy;
         _loc2_.data = _loc3_.getShopDetailViewVo(param1.shopFieldObjectVo);
         facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
      }
      
      private function openProductionPopup(param1:ProductionFieldObject) : void
      {
         var _loc2_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
         var _loc3_:MainLayerProxy = facade.retrieveProxy(MainLayerProxy.NAME) as MainLayerProxy;
         _loc2_.modal = true;
         _loc2_.viewClass = ProductionPopup;
         _loc2_.mediatorClass = ProductionPopupMediator;
         _loc2_.mediatorName = ProductionPopupMediator.NAME;
         _loc2_.data = _loc3_.getProductionDetailViewVo(param1.productionFieldObjectVo);
         facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
      }
      
      private function openDepartmentPopup(param1:InfrastructureBuildingFieldObject) : void
      {
         var _loc2_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
         _loc2_.modal = true;
         _loc2_.viewClass = EmergencyDepartmentBook;
         _loc2_.mediatorClass = EmergencyDepartmentBookMediator;
         _loc2_.mediatorName = EmergencyDepartmentBookMediator.NAME;
         var _loc3_:Object = {};
         _loc3_.index = DepartmentTabProxy.DEPARTMENT_INDEX;
         _loc3_.cat = param1.emergencyFieldObjectVo.department[0];
         _loc2_.data = _loc3_;
         facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
      }
      
      private function openAcademyPopup(param1:AcademyFieldObject) : void
      {
         var _loc2_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
         _loc2_.modal = true;
         _loc2_.mediatorName = SchoolBookMediator.NAME;
         _loc2_.mediatorClass = SchoolBookMediator;
         _loc2_.viewClass = SchoolBook;
         _loc2_.data = param1;
         sendNotification(VirtualTaskNotificationInterest.ACADEMY_LAYER_OPENED);
         facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
      }
      
      private function evaluateDrops(param1:BillboardObject) : void
      {
         TweenMax.killDelayedCallsTo(this.evaluateDrops);
         sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_HARVESTPHASE_PROCESS,{"vo":param1.billboardObjectVo});
         sendNotification(ApplicationNotificationConstants.PREPARE_BILLBOARDOBJECT_FLOATERMANAGER,param1);
         param1.invalidateInformationFloaterManager();
         if(param1 is ScheduledDropFieldObject)
         {
            (param1 as ScheduledDropFieldObject).scheduledDropFieldObjectVo.isAnimationPlaying = false;
         }
      }
   }
}

