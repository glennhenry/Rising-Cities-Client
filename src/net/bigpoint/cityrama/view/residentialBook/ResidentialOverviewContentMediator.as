package net.bigpoint.cityrama.view.residentialBook
{
   import flash.events.Event;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.constants.ServerFeatureConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.FeatureProxy;
   import net.bigpoint.cityrama.model.detailViews.MainLayerProxy;
   import net.bigpoint.cityrama.model.detailViews.vo.ResidentialDetailViewVo;
   import net.bigpoint.cityrama.model.featureScreens.FeatureScreenProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.mastery.BuildingMasteryProxy;
   import net.bigpoint.cityrama.model.mastery.MasteryBonusVo;
   import net.bigpoint.cityrama.model.mastery.MasteryChallengeVo;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.model.residentialBook.ResidentialTabProxy;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.common.components.MasteryComponent;
   import net.bigpoint.cityrama.view.common.components.ShowMasteryInfolayerEvent;
   import net.bigpoint.cityrama.view.common.components.UpgradeProgressComponent;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ResidentialOverviewContentComponent;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ResidentialPopup;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.MasteryChallengeUiInfolayerComponentVo;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.SimpleTextUiInfolayerContentVo;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ResidentialOverviewContentMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "ResidentialOverviewContentMediator";
      
      private static const UI_MEDIATOR_NAME:String;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         NAME = "ResidentialOverviewContentMediator";
         if(_loc2_)
         {
            UI_MEDIATOR_NAME = UserInterfaceInfoLayerMediator.NAME + NAME;
         }
      }
      
      private var _residentialData:ResidentialDetailViewVo;
      
      private var _sP:SoundProxy;
      
      private var _tabP:ResidentialTabProxy;
      
      private var _mLP:MainLayerProxy;
      
      private var _mP:BuildingMasteryProxy;
      
      private var _component:ResidentialOverviewContentComponent;
      
      private var _waitingForPhaseUpdate:Boolean = false;
      
      public function ResidentialOverviewContentMediator(param1:String, param2:ResidentialPopup)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(this))
         {
            super(param1,param2);
         }
      }
      
      public function init() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            facade.sendNotification(VirtualTaskNotificationInterest.RESIDENTIALLAYED_OPENED);
            if(_loc1_)
            {
               if(!this._component)
               {
                  if(!_loc2_)
                  {
                     this._component = new ResidentialOverviewContentComponent();
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr0052:
                        this.setOverviewData();
                        if(_loc1_ || _loc2_)
                        {
                           addr006f:
                           this.container.contentGroup.addElement(this.component);
                           if(!(_loc2_ && _loc1_))
                           {
                              addr008b:
                              this.addListener();
                              if(!(_loc2_ && _loc1_))
                              {
                                 facade.removeMediator(UI_MEDIATOR_NAME);
                                 if(_loc1_)
                                 {
                                    addr00b6:
                                    facade.registerMediator(new UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this._component.masteryComponent.uiInfolayerAlignmentLine],this));
                                 }
                              }
                              §§goto(addr00e4);
                           }
                        }
                        §§goto(addr00b6);
                     }
                     addr00e4:
                     return;
                  }
                  §§goto(addr00b6);
               }
               §§goto(addr0052);
            }
            §§goto(addr006f);
         }
         §§goto(addr008b);
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            RandomUtilities.removestackCall(this.updateDynamicData);
            if(_loc2_ || _loc2_)
            {
               RandomUtilities.removestackCall(this.updateData);
               if(_loc2_)
               {
                  super.onRemove();
                  if(_loc2_ || _loc2_)
                  {
                     addr006d:
                     this.removeListener();
                  }
                  return;
               }
            }
         }
         §§goto(addr006d);
      }
      
      private function handleBuyPermits(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            param1.stopPropagation();
            if(!_loc3_)
            {
               addr003a:
               facade.sendNotification(ApplicationNotificationConstants.OPEN_GOOD_PURCHASE,{"cat":ServerTagConstants.GOOD_KEY});
            }
            return;
         }
         §§goto(addr003a);
      }
      
      private function handleChangeResidents(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         if(!_loc3_)
         {
            facade.sendNotification(ApplicationNotificationConstants.OPEN_RESIDENT_SWAP,_loc2_.getObjectByVo(this._residentialData.residentialFieldObjectVo) as ResidentialFieldObject);
         }
      }
      
      private function handleOpenBalanceFeature(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(this)))
         {
            param1.stopPropagation();
         }
         var _loc2_:Object = new Object();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc2_.feature = FeatureScreenProxy.FEATURE_BALANCE;
            if(!_loc3_)
            {
               _loc2_.quest = false;
               if(_loc4_ || _loc3_)
               {
                  sendNotification(ApplicationNotificationConstants.OPEN_FEATURESCREEN,_loc2_);
               }
            }
         }
      }
      
      private function handleOpenUpgradeFeature(param1:Event) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            param1.stopPropagation();
         }
         var _loc2_:Object = new Object();
         if(!_loc4_)
         {
            _loc2_.feature = FeatureScreenProxy.FEATURE_PERMISSIONS;
            if(_loc3_ || Boolean(_loc2_))
            {
               §§goto(addr004b);
            }
            §§goto(addr0056);
         }
         addr004b:
         _loc2_.quest = false;
         if(!_loc4_)
         {
            addr0056:
            sendNotification(ApplicationNotificationConstants.OPEN_FEATURESCREEN,_loc2_);
         }
      }
      
      private function handleOpenNeedFeature(param1:Event) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            param1.stopPropagation();
         }
         var _loc2_:Object = new Object();
         if(_loc3_ || _loc3_)
         {
            _loc2_.feature = FeatureScreenProxy.FEATURE_NEEDS;
            if(_loc3_ || _loc3_)
            {
               §§goto(addr005c);
            }
            §§goto(addr006f);
         }
         addr005c:
         _loc2_.quest = false;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            addr006f:
            sendNotification(ApplicationNotificationConstants.OPEN_FEATURESCREEN,_loc2_);
         }
      }
      
      private function handleUpgradeBuilding(param1:Event) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_)
         {
            param1.stopPropagation();
            if(_loc4_ || _loc2_)
            {
               this.soundProxy.playButtonClick();
            }
         }
         var _loc2_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc3_:BillboardObject = _loc2_.getObjectByVo(this._residentialData.residentialFieldObjectVo) as BillboardObject;
         if(!(_loc5_ && Boolean(_loc2_)))
         {
            facade.sendNotification(ApplicationNotificationConstants.OPEN_CONSTRUCTION_LAYER,_loc3_);
         }
      }
      
      private function handleBuyDD(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            param1.stopPropagation();
            if(!_loc3_)
            {
               facade.sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
            }
         }
      }
      
      private function handleBuyUpgrade(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            param1.stopPropagation();
            if(!(_loc3_ && Boolean(param1)))
            {
               StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
               if(_loc2_)
               {
                  if(this._residentialData.residentialFieldObjectVo.isHarvestReady)
                  {
                     if(!(_loc3_ && Boolean(this)))
                     {
                        sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_HARVESTPHASE_PROCESS,{
                           "vo":this._residentialData.residentialFieldObjectVo,
                           "silent":true
                        });
                        addr0061:
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr0096:
                           sendNotification(ApplicationNotificationConstants.INSTANT_UPGRADE_REQUEST,this._residentialData.residentialFieldObjectVo.buildingDTO.id);
                           if(_loc2_)
                           {
                              addr00b1:
                              sendNotification(ApplicationNotificationConstants.RESIDENTIAL_CLOSE_REQUEST);
                           }
                           §§goto(addr00bb);
                        }
                        §§goto(addr00b1);
                     }
                     §§goto(addr00bb);
                  }
                  §§goto(addr0096);
               }
               addr00bb:
               return;
            }
            §§goto(addr0061);
         }
         §§goto(addr0096);
      }
      
      private function addListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.component);
            if(!(_loc2_ && _loc2_))
            {
               §§push(UpgradeProgressComponent.UPGRADE_BUILDING);
               if(!(_loc2_ && _loc1_))
               {
                  §§pop().addEventListener(§§pop(),this.handleUpgradeBuilding);
                  if(_loc1_ || _loc2_)
                  {
                     addr0054:
                     §§push(this.component);
                     if(_loc1_)
                     {
                        addr005c:
                        §§push(UpgradeProgressComponent.BUY_DD);
                        if(!_loc2_)
                        {
                           addr0067:
                           §§pop().addEventListener(§§pop(),this.handleBuyDD);
                           if(_loc1_)
                           {
                              §§push(this.component);
                              if(_loc1_ || _loc2_)
                              {
                                 §§push(UpgradeProgressComponent.BUY_UPGRADE);
                                 if(!_loc2_)
                                 {
                                    addr008f:
                                    §§pop().addEventListener(§§pop(),this.handleBuyUpgrade);
                                    if(!_loc2_)
                                    {
                                       §§push(this.component);
                                       if(_loc1_ || _loc1_)
                                       {
                                          §§push(ResidentialOverviewContentComponent.OPEN_NEED_FEATURE);
                                          if(!(_loc2_ && Boolean(this)))
                                          {
                                             §§pop().addEventListener(§§pop(),this.handleOpenNeedFeature);
                                             if(!_loc2_)
                                             {
                                                §§push(this.component);
                                                if(!_loc2_)
                                                {
                                                   addr00d3:
                                                   §§push(ResidentialOverviewContentComponent.OPEN_UPGRADE_FEATURE);
                                                   if(_loc1_ || _loc1_)
                                                   {
                                                      §§pop().addEventListener(§§pop(),this.handleOpenUpgradeFeature);
                                                      if(_loc1_)
                                                      {
                                                         addr00f2:
                                                         §§push(this.component);
                                                         if(_loc1_)
                                                         {
                                                            §§push(ResidentialOverviewContentComponent.OPEN_BALANCE_FEATURE);
                                                            if(!_loc2_)
                                                            {
                                                               §§pop().addEventListener(§§pop(),this.handleOpenBalanceFeature);
                                                               if(_loc1_ || _loc2_)
                                                               {
                                                                  addr0124:
                                                                  §§push(this.component);
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§push(ResidentialOverviewContentComponent.CHANGE_RESIDENTS_EVENT);
                                                                     if(_loc1_)
                                                                     {
                                                                        addr0137:
                                                                        §§pop().addEventListener(§§pop(),this.handleChangeResidents);
                                                                        if(_loc1_)
                                                                        {
                                                                           §§push(this.component);
                                                                           if(_loc1_)
                                                                           {
                                                                              §§push(ResidentialOverviewContentComponent.BUY_PERMITS);
                                                                              if(!_loc2_)
                                                                              {
                                                                                 addr0157:
                                                                                 §§pop().addEventListener(§§pop(),this.handleBuyPermits);
                                                                                 if(_loc1_)
                                                                                 {
                                                                                    addr0163:
                                                                                    §§push(this.component);
                                                                                    if(!(_loc2_ && Boolean(this)))
                                                                                    {
                                                                                       §§goto(addr0179);
                                                                                    }
                                                                                    §§goto(addr0196);
                                                                                 }
                                                                                 §§goto(addr023f);
                                                                              }
                                                                              addr0179:
                                                                              §§pop().addEventListener(ResidentialOverviewContentComponent.CLOSE_AND_HARVEST,this.handleCloseAndHarvest);
                                                                              §§goto(addr0173);
                                                                           }
                                                                           §§goto(addr0242);
                                                                        }
                                                                        §§goto(addr023f);
                                                                     }
                                                                     §§goto(addr0157);
                                                                  }
                                                                  addr0173:
                                                                  if(!(_loc2_ && Boolean(this)))
                                                                  {
                                                                     addr018e:
                                                                     §§push(this.component);
                                                                     if(_loc1_)
                                                                     {
                                                                        addr0196:
                                                                        §§push(§§pop().masteryComponent);
                                                                        if(_loc1_ || Boolean(this))
                                                                        {
                                                                           §§push(ShowMasteryInfolayerEvent.SHOW);
                                                                           if(!(_loc2_ && _loc2_))
                                                                           {
                                                                              §§pop().addEventListener(§§pop(),this.showMasteryInfolayerHandler);
                                                                              if(!(_loc2_ && Boolean(this)))
                                                                              {
                                                                                 §§push(this.component);
                                                                                 if(_loc1_)
                                                                                 {
                                                                                    §§push(§§pop().masteryComponent);
                                                                                    if(_loc1_ || Boolean(this))
                                                                                    {
                                                                                       §§push(MasteryComponent.HIDE_MASTERY_INFOLAYER);
                                                                                       if(_loc1_)
                                                                                       {
                                                                                          addr01f0:
                                                                                          §§pop().addEventListener(§§pop(),this.hideMasteryInfolayerHandler);
                                                                                          if(_loc1_ || _loc2_)
                                                                                          {
                                                                                             addr0205:
                                                                                             §§push(this.component);
                                                                                             if(_loc1_)
                                                                                             {
                                                                                                addr020d:
                                                                                                §§push(§§pop().masteryComponent);
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   addr021f:
                                                                                                   §§push(MasteryComponent.COLLECT_MASTERY_CLICKED);
                                                                                                   if(_loc1_)
                                                                                                   {
                                                                                                      §§pop().addEventListener(§§pop(),this.collectMasteryHandler);
                                                                                                      if(_loc1_ || _loc2_)
                                                                                                      {
                                                                                                         addr024b:
                                                                                                         this.component.masteryComponent.addEventListener(MasteryComponent.INSTANT_FINISH_MASTERY,this.instantFinishMasteryHandler);
                                                                                                         addr0245:
                                                                                                         addr0242:
                                                                                                         addr023f:
                                                                                                      }
                                                                                                      §§goto(addr0253);
                                                                                                   }
                                                                                                   §§goto(addr024b);
                                                                                                }
                                                                                                §§goto(addr0245);
                                                                                             }
                                                                                             §§goto(addr0242);
                                                                                          }
                                                                                          §§goto(addr023f);
                                                                                       }
                                                                                       §§goto(addr024b);
                                                                                    }
                                                                                    §§goto(addr021f);
                                                                                 }
                                                                                 §§goto(addr0242);
                                                                              }
                                                                              §§goto(addr0205);
                                                                           }
                                                                           §§goto(addr01f0);
                                                                        }
                                                                        §§goto(addr021f);
                                                                     }
                                                                     §§goto(addr0242);
                                                                  }
                                                               }
                                                               §§goto(addr0253);
                                                            }
                                                            §§goto(addr0137);
                                                         }
                                                         §§goto(addr020d);
                                                      }
                                                      addr0253:
                                                      return;
                                                   }
                                                   §§goto(addr0179);
                                                }
                                                §§goto(addr0173);
                                             }
                                             §§goto(addr018e);
                                          }
                                          §§goto(addr0179);
                                       }
                                       §§goto(addr00d3);
                                    }
                                    §§goto(addr0163);
                                 }
                                 §§goto(addr0137);
                              }
                              §§goto(addr020d);
                           }
                           §§goto(addr00f2);
                        }
                        §§goto(addr008f);
                     }
                     §§goto(addr0242);
                  }
                  §§goto(addr0124);
               }
               §§goto(addr0067);
            }
            §§goto(addr005c);
         }
         §§goto(addr0054);
      }
      
      private function removeListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            §§push(this.component);
            if(_loc1_ || _loc1_)
            {
               §§push(UpgradeProgressComponent.UPGRADE_BUILDING);
               if(_loc1_ || Boolean(this))
               {
                  §§pop().removeEventListener(§§pop(),this.handleUpgradeBuilding);
                  if(_loc1_)
                  {
                     §§push(this.component);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(UpgradeProgressComponent.BUY_DD);
                        if(!(_loc2_ && Boolean(this)))
                        {
                           §§pop().removeEventListener(§§pop(),this.handleBuyDD);
                           if(_loc1_)
                           {
                              §§push(this.component);
                              if(_loc1_ || Boolean(this))
                              {
                                 §§push(UpgradeProgressComponent.BUY_UPGRADE);
                                 if(_loc1_ || _loc1_)
                                 {
                                    §§pop().removeEventListener(§§pop(),this.handleBuyUpgrade);
                                    if(!_loc2_)
                                    {
                                       §§push(this.component);
                                       if(_loc1_ || Boolean(this))
                                       {
                                          §§push(ResidentialOverviewContentComponent.CHANGE_RESIDENTS_EVENT);
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             addr00cf:
                                             §§pop().removeEventListener(§§pop(),this.handleChangeResidents);
                                             if(!_loc2_)
                                             {
                                                §§push(this.component);
                                                if(_loc1_)
                                                {
                                                   §§push(ResidentialOverviewContentComponent.BUY_PERMITS);
                                                   if(_loc1_ || _loc1_)
                                                   {
                                                      §§pop().removeEventListener(§§pop(),this.handleBuyPermits);
                                                      if(_loc1_)
                                                      {
                                                         §§goto(addr0103);
                                                      }
                                                      §§goto(addr01b6);
                                                   }
                                                   §§goto(addr0128);
                                                }
                                                §§goto(addr0232);
                                             }
                                             §§goto(addr0134);
                                          }
                                          §§goto(addr01a1);
                                       }
                                       §§goto(addr0173);
                                    }
                                    §§goto(addr022f);
                                 }
                                 §§goto(addr0128);
                              }
                              §§goto(addr01fd);
                           }
                           §§goto(addr0193);
                        }
                        §§goto(addr00cf);
                     }
                     §§goto(addr0232);
                  }
                  addr0103:
                  §§push(this.component);
                  if(_loc1_)
                  {
                     §§push(ResidentialOverviewContentComponent.OPEN_NEED_FEATURE);
                     if(_loc1_ || _loc1_)
                     {
                        addr0128:
                        §§pop().removeEventListener(§§pop(),this.handleOpenNeedFeature);
                        if(!_loc2_)
                        {
                           addr0134:
                           §§push(this.component);
                           if(_loc1_ || Boolean(this))
                           {
                              §§goto(addr0144);
                           }
                           §§goto(addr019b);
                        }
                        §§goto(addr01b6);
                     }
                     §§goto(addr014f);
                  }
                  addr0144:
                  §§push(ResidentialOverviewContentComponent.OPEN_UPGRADE_FEATURE);
                  if(!_loc2_)
                  {
                     addr014f:
                     §§pop().removeEventListener(§§pop(),this.handleOpenUpgradeFeature);
                     if(_loc1_ || _loc2_)
                     {
                        §§push(this.component);
                        if(_loc1_ || _loc1_)
                        {
                           addr0173:
                           §§push(ResidentialOverviewContentComponent.OPEN_BALANCE_FEATURE);
                           if(_loc1_)
                           {
                              §§goto(addr017e);
                           }
                           §§goto(addr01a1);
                        }
                        §§goto(addr0232);
                     }
                     §§goto(addr022f);
                  }
                  addr017e:
                  §§pop().removeEventListener(§§pop(),this.handleOpenBalanceFeature);
                  if(_loc1_ || Boolean(this))
                  {
                     addr0193:
                     §§push(this.component);
                     if(_loc1_)
                     {
                        addr01a1:
                        §§pop().removeEventListener(ResidentialOverviewContentComponent.CLOSE_AND_HARVEST,this.handleCloseAndHarvest);
                        addr019b:
                        if(_loc1_ || _loc1_)
                        {
                           addr01b6:
                           §§push(this.component);
                           if(_loc1_ || Boolean(this))
                           {
                              addr01c6:
                              §§push(§§pop().masteryComponent);
                              if(_loc1_)
                              {
                                 §§push(ShowMasteryInfolayerEvent.SHOW);
                                 if(_loc1_)
                                 {
                                    §§pop().removeEventListener(§§pop(),this.showMasteryInfolayerHandler);
                                    if(_loc1_ || _loc1_)
                                    {
                                       addr01ed:
                                       §§push(this.component);
                                       if(_loc1_ || Boolean(this))
                                       {
                                          addr01fd:
                                          §§push(§§pop().masteryComponent);
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             §§push(MasteryComponent.HIDE_MASTERY_INFOLAYER);
                                             if(!_loc2_)
                                             {
                                                §§pop().removeEventListener(§§pop(),this.hideMasteryInfolayerHandler);
                                                if(_loc1_)
                                                {
                                                   addr023b:
                                                   this.component.masteryComponent.removeEventListener(MasteryComponent.COLLECT_MASTERY_CLICKED,this.collectMasteryHandler);
                                                   addr0235:
                                                   addr0232:
                                                   addr022f:
                                                }
                                                §§goto(addr0243);
                                             }
                                             §§goto(addr023b);
                                          }
                                          §§goto(addr0235);
                                       }
                                       §§goto(addr0232);
                                    }
                                    §§goto(addr022f);
                                 }
                                 §§goto(addr023b);
                              }
                              §§goto(addr0235);
                           }
                           §§goto(addr0232);
                        }
                        §§goto(addr01ed);
                     }
                     §§goto(addr01c6);
                  }
                  addr0243:
                  return;
               }
               §§goto(addr00cf);
            }
            §§goto(addr0232);
         }
         §§goto(addr0193);
      }
      
      private function handleCloseAndHarvest(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            param1.stopPropagation();
            if(_loc2_)
            {
               addr0027:
               sendNotification(ApplicationNotificationConstants.RESIDENTIAL_CLOSE_AND_HARVEST);
            }
            return;
         }
         §§goto(addr0027);
      }
      
      private function get container() : ResidentialPopup
      {
         return super.viewComponent as ResidentialPopup;
      }
      
      private function setOverviewData() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this._residentialData = this.layerProxy.getResidentialDetailViewVo(this.tabProxy.currentResidential);
            if(_loc1_)
            {
               §§goto(addr0041);
            }
            §§goto(addr0067);
         }
         addr0041:
         this.component.data = this._residentialData;
         if(_loc1_)
         {
            if(this._residentialData.upgradeReady)
            {
               if(_loc1_ || _loc1_)
               {
                  addr0067:
                  facade.sendNotification(VirtualTaskNotificationInterest.UPGRADEREADY_RESIDENTIAL_LAYEROPENED);
               }
            }
         }
      }
      
      public function get component() : ResidentialOverviewContentComponent
      {
         return this._component;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.RESIDENTIAL_BUILDING_STATE_CHANGED,ApplicationNotificationConstants.IMPROVEMENT_EQUIPPED,ApplicationNotificationConstants.IMPROVEMENT_DELETED,ApplicationNotificationConstants.IMPROVEMENT_UPDATED,ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED,ApplicationNotificationConstants.MASTERY_CHALLENGE_UPDATE,ApplicationNotificationConstants.REALCURRENCY_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = param1.getName();
         if(!(_loc4_ && Boolean(this)))
         {
            §§push(ApplicationNotificationConstants.RESIDENTIAL_BUILDING_STATE_CHANGED);
            if(!_loc4_)
            {
               §§push(_loc2_);
               if(!_loc4_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc4_)
                     {
                        §§push(0);
                        if(_loc3_ || Boolean(_loc2_))
                        {
                        }
                     }
                     else
                     {
                        addr0173:
                        §§push(3);
                        if(_loc4_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(ApplicationNotificationConstants.IMPROVEMENT_DELETED);
                     if(_loc3_)
                     {
                        §§push(_loc2_);
                        if(!_loc4_)
                        {
                           addr0114:
                           if(§§pop() === §§pop())
                           {
                              if(_loc3_)
                              {
                                 addr011d:
                                 §§push(1);
                                 if(_loc3_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr0143:
                                 §§push(2);
                                 if(_loc4_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push(ApplicationNotificationConstants.IMPROVEMENT_EQUIPPED);
                              if(!_loc4_)
                              {
                                 addr0133:
                                 §§push(_loc2_);
                                 if(!_loc4_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc3_)
                                       {
                                          §§goto(addr0143);
                                       }
                                       else
                                       {
                                          addr01f1:
                                          §§push(6);
                                          if(_loc4_ && Boolean(this))
                                          {
                                          }
                                       }
                                       §§goto(addr0211);
                                    }
                                    else
                                    {
                                       §§push(ApplicationNotificationConstants.IMPROVEMENT_UPDATED);
                                       if(!(_loc4_ && Boolean(this)))
                                       {
                                          addr0162:
                                          §§push(_loc2_);
                                          if(!_loc4_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc4_)
                                                {
                                                   §§goto(addr0173);
                                                }
                                                else
                                                {
                                                   §§goto(addr01f1);
                                                }
                                             }
                                             else
                                             {
                                                §§push(ApplicationNotificationConstants.MASTERY_CHALLENGE_UPDATE);
                                                if(!_loc4_)
                                                {
                                                   §§push(_loc2_);
                                                   if(_loc3_)
                                                   {
                                                      addr0190:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            §§push(4);
                                                            if(_loc4_)
                                                            {
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr01dc:
                                                            §§push(5);
                                                            if(_loc3_)
                                                            {
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED);
                                                         if(!_loc4_)
                                                         {
                                                            addr01b0:
                                                            §§push(_loc2_);
                                                            if(_loc3_ || Boolean(param1))
                                                            {
                                                               addr01be:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc3_ || Boolean(_loc2_))
                                                                  {
                                                                     §§goto(addr01dc);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr01f1);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr01ed);
                                                               }
                                                               §§goto(addr01f1);
                                                            }
                                                            addr01ed:
                                                            §§goto(addr01ec);
                                                         }
                                                         addr01ec:
                                                         if(ApplicationNotificationConstants.REALCURRENCY_CHANGED === _loc2_)
                                                         {
                                                            §§goto(addr01f1);
                                                         }
                                                         else
                                                         {
                                                            §§push(7);
                                                         }
                                                         §§goto(addr0211);
                                                      }
                                                      §§goto(addr0211);
                                                   }
                                                   §§goto(addr01ed);
                                                }
                                                §§goto(addr01b0);
                                             }
                                             §§goto(addr01f1);
                                          }
                                          §§goto(addr01be);
                                       }
                                       §§goto(addr01b0);
                                    }
                                 }
                                 §§goto(addr01be);
                              }
                              §§goto(addr0162);
                           }
                           §§goto(addr0211);
                        }
                        §§goto(addr0190);
                     }
                     §§goto(addr0133);
                  }
                  addr0211:
                  switch(§§pop())
                  {
                     case 0:
                        this._waitingForPhaseUpdate = false;
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           RandomUtilities.addstackCall(this.updateData);
                           if(_loc3_)
                           {
                              break;
                           }
                        }
                        addr0063:
                        RandomUtilities.addstackCall(this.updateData);
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           break;
                        }
                        addr0096:
                        RandomUtilities.addstackCall(this.updateDynamicData,0.5);
                        if(_loc3_)
                        {
                        }
                        break;
                     case 1:
                     case 2:
                     case 3:
                     case 4:
                        §§push(this._waitingForPhaseUpdate);
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           if(§§pop())
                           {
                              break;
                           }
                           if(!(_loc3_ || _loc3_))
                           {
                              break;
                           }
                           §§goto(addr0063);
                        }
                        else
                        {
                           addr0084:
                           if(§§pop())
                           {
                              break;
                           }
                           if(_loc4_ && _loc3_)
                           {
                              break;
                           }
                        }
                        §§goto(addr0096);
                     case 5:
                     case 6:
                        §§goto(addr0084);
                        §§push(this._waitingForPhaseUpdate);
                  }
                  return;
               }
               §§goto(addr0114);
            }
            §§goto(addr0162);
         }
         §§goto(addr011d);
      }
      
      private function updateDynamicData() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            this._residentialData = this.layerProxy.getResidentialDetailViewVo(this.tabProxy.currentResidential);
            if(!_loc1_)
            {
               addr0040:
               this.component.updateDynamicData = this._residentialData;
            }
            return;
         }
         §§goto(addr0040);
      }
      
      private function updateData() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            this._residentialData = this.layerProxy.getResidentialDetailViewVo(this.tabProxy.currentResidential);
            if(_loc2_ || _loc2_)
            {
               addr0048:
               this.component.data = this._residentialData;
            }
            return;
         }
         §§goto(addr0048);
      }
      
      private function get layerProxy() : MainLayerProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this._mLP);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop() == null)
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr0043:
                     this._mLP = facade.retrieveProxy(MainLayerProxy.NAME) as MainLayerProxy;
                  }
               }
               return this._mLP;
            }
         }
         §§goto(addr0043);
      }
      
      private function get tabProxy() : ResidentialTabProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            §§push(this._tabP);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop() == null)
               {
                  if(_loc2_ || _loc1_)
                  {
                     this._tabP = facade.retrieveProxy(ResidentialTabProxy.NAME) as ResidentialTabProxy;
                  }
               }
               addr0067:
               return this._tabP;
            }
         }
         §§goto(addr0067);
      }
      
      private function get soundProxy() : SoundProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this._sP);
            if(_loc2_ || Boolean(this))
            {
               if(§§pop() == null)
               {
                  if(_loc2_ || Boolean(this))
                  {
                     addr0043:
                     this._sP = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
                  }
               }
               return this._sP;
            }
         }
         §§goto(addr0043);
      }
      
      private function get masteryProxy() : BuildingMasteryProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this._mP);
            if(_loc1_)
            {
               if(§§pop() == null)
               {
                  if(_loc1_)
                  {
                     this._mP = facade.retrieveProxy(BuildingMasteryProxy.NAME) as BuildingMasteryProxy;
                  }
               }
               addr0044:
               return this._mP;
            }
         }
         §§goto(addr0044);
      }
      
      private function showMasteryInfolayerHandler(param1:ShowMasteryInfolayerEvent) : void
      {
         §§push(false);
         var _loc14_:Boolean = true;
         var _loc15_:* = §§pop();
         var _loc2_:Point = null;
         var _loc3_:* = null;
         var _loc5_:* = null;
         var _loc6_:SimpleTextUiInfolayerContentVo = null;
         var _loc7_:* = 0;
         var _loc8_:MasteryChallengeVo = null;
         var _loc9_:* = null;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:Vector.<MasteryBonusVo> = null;
         var _loc13_:MasteryChallengeUiInfolayerComponentVo = null;
         var _loc4_:FeatureProxy = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
         if(!_loc4_.isFeatureEnabled(ServerFeatureConstants.BUILDING_MASTERY))
         {
            if(_loc14_ || Boolean(_loc2_))
            {
               _loc2_ = param1.target.localToGlobal(new Point());
               if(_loc14_)
               {
                  _loc2_.x = _loc2_.x + param1.target.width / 2 - 5;
                  if(_loc14_ || Boolean(_loc3_))
                  {
                     §§push(LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.guiinfolayer.mastery.locked.header.capital"));
                     if(!_loc15_)
                     {
                        §§push(§§pop());
                        if(!_loc15_)
                        {
                           _loc3_ = §§pop();
                           if(!_loc15_)
                           {
                              addr00cf:
                              §§push(LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.guiinfolayer.mastery.locked.flavor",[_loc4_.masteryFeatureUnlockLevel]));
                              if(!_loc15_)
                              {
                                 addr00e8:
                                 §§push(§§pop());
                              }
                              _loc5_ = §§pop();
                           }
                           §§goto(addr00eb);
                        }
                     }
                     §§goto(addr00e8);
                  }
                  §§goto(addr00cf);
               }
               addr00eb:
               _loc6_ = new SimpleTextUiInfolayerContentVo(0,_loc2_,_loc5_,_loc3_,"levellocked");
               _loc6_.width = 230;
               if(!_loc15_)
               {
                  facade.sendNotification(ApplicationNotificationConstants.SHOW_UI_INFOLAYER,_loc6_);
               }
               §§goto(addr035b);
            }
            else
            {
               addr0131:
               _loc2_ = this.component.masteryComponent.uiInfolayerAlignmentLine.localToGlobal(new Point());
               if(_loc14_ || Boolean(_loc3_))
               {
                  _loc2_.x += this.component.masteryComponent.uiInfolayerAlignmentLine.width / 5 * (_loc7_ + 0.5) - 5;
                  if(!_loc15_)
                  {
                     §§push(_loc7_);
                     if(!_loc15_)
                     {
                        §§push(0);
                        if(_loc14_ || Boolean(_loc2_))
                        {
                           §§push(§§pop() < §§pop());
                           if(!_loc15_)
                           {
                              var _temp_7:* = §§pop();
                              §§push(_temp_7);
                              if(!_temp_7)
                              {
                                 if(!(_loc15_ && Boolean(this)))
                                 {
                                    §§pop();
                                    if(!_loc15_)
                                    {
                                       §§push(_loc7_);
                                       if(!(_loc15_ && Boolean(_loc3_)))
                                       {
                                          addr01d0:
                                          addr01cf:
                                          addr01cd:
                                          if(§§pop() > 4)
                                          {
                                             if(!_loc15_)
                                             {
                                                §§push(this._residentialData);
                                                if(!_loc15_)
                                                {
                                                   §§push(§§pop().currentMasteryChallenge);
                                                   if(_loc14_ || Boolean(param1))
                                                   {
                                                      addr01f9:
                                                      _loc7_ = int(§§pop().currentMasteryIndex);
                                                      if(_loc14_)
                                                      {
                                                         addr0201:
                                                         _loc2_.x += this.component.masteryComponent.uiInfolayerAlignmentLine.width / 2;
                                                      }
                                                      addr021a:
                                                      addr0216:
                                                      §§push(this._residentialData.currentMasteryChallenge);
                                                   }
                                                   _loc8_ = §§pop().challenges[_loc7_];
                                                   if(_loc8_ == null)
                                                   {
                                                      if(_loc14_ || Boolean(_loc3_))
                                                      {
                                                         return;
                                                      }
                                                      addr0285:
                                                      §§push(LocaUtils);
                                                      §§push("rcl.booklayer.residential");
                                                      §§push("rcl.booklayer.residential.guiinfolayer.mastery.challenge.flavor.");
                                                      if(!_loc15_)
                                                      {
                                                         §§push(§§pop() + _loc8_.challengeType);
                                                      }
                                                      §§push(§§pop().getString(§§pop(),§§pop()));
                                                      if(_loc14_)
                                                      {
                                                         addr02a3:
                                                         §§push(§§pop());
                                                      }
                                                      _loc9_ = §§pop();
                                                      if(!(_loc15_ && Boolean(param1)))
                                                      {
                                                         addr02b4:
                                                         §§push(_loc8_.targetProgress);
                                                         if(_loc14_ || Boolean(_loc3_))
                                                         {
                                                            §§push(§§pop());
                                                            if(!_loc15_)
                                                            {
                                                               _loc10_ = §§pop();
                                                               if(_loc14_)
                                                               {
                                                                  addr02ea:
                                                                  addr02d6:
                                                                  §§push(_loc8_.currentProgress);
                                                                  if(!(_loc15_ && Boolean(_loc3_)))
                                                                  {
                                                                     addr02e9:
                                                                     §§push(§§pop());
                                                                  }
                                                                  _loc11_ = §§pop();
                                                               }
                                                               _loc12_ = this.masteryProxy.getMasteryBonusForChallenge(this._residentialData.residentialFieldObjectVo,_loc8_.bonusId,_loc7_ + 1);
                                                               _loc13_ = new MasteryChallengeUiInfolayerComponentVo(0,_loc2_,_loc9_,_loc10_,_loc11_,_loc12_,this._residentialData.currentMasteryChallenge.currentMasteryIndex > _loc7_,_loc3_);
                                                               if(!(_loc15_ && Boolean(_loc2_)))
                                                               {
                                                                  facade.sendNotification(ApplicationNotificationConstants.SHOW_UI_INFOLAYER,_loc13_,this.getMediatorName());
                                                               }
                                                               §§goto(addr035b);
                                                            }
                                                            §§goto(addr02ea);
                                                         }
                                                         §§goto(addr02e9);
                                                      }
                                                      §§goto(addr02d6);
                                                   }
                                                   else
                                                   {
                                                      §§push(LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.guiinfolayer.mastery.running.header.capital",[_loc7_ + 1]));
                                                      if(_loc14_)
                                                      {
                                                         §§push(§§pop());
                                                         if(!(_loc15_ && Boolean(_loc3_)))
                                                         {
                                                            _loc3_ = §§pop();
                                                            if(_loc14_ || Boolean(_loc3_))
                                                            {
                                                               §§goto(addr0285);
                                                            }
                                                            §§goto(addr02b4);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr02a3);
                                                }
                                                §§goto(addr021a);
                                             }
                                             §§goto(addr0201);
                                          }
                                          §§goto(addr0216);
                                       }
                                       §§goto(addr01f9);
                                    }
                                    §§goto(addr0201);
                                 }
                              }
                           }
                           §§goto(addr01d0);
                        }
                        §§goto(addr01cf);
                     }
                     §§goto(addr01cd);
                  }
                  §§goto(addr0216);
               }
               §§goto(addr0201);
            }
            return;
         }
         §§push(param1.index);
         if(!(_loc15_ && Boolean(this)))
         {
            §§push(§§pop());
         }
         _loc7_ = §§pop();
         §§goto(addr0131);
      }
      
      private function hideMasteryInfolayerHandler(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            facade.sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
         }
      }
      
      private function collectMasteryHandler(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this.collectMastery();
         }
      }
      
      private function instantFinishMasteryHandler(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:PlayerResourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         if(!_loc3_)
         {
            if(_loc2_.realCurrency >= this._residentialData.currentMasteryChallenge.instantFinishPrice)
            {
               if(!_loc3_)
               {
                  addr005c:
                  this.collectMastery(true);
                  if(_loc4_)
                  {
                     StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
                     if(_loc4_ || Boolean(_loc2_))
                     {
                     }
                  }
               }
            }
            else
            {
               facade.sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
            }
            return;
         }
         §§goto(addr005c);
      }
      
      private function collectMastery(param1:Boolean = false) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:int = 1;
         if(_loc5_)
         {
            §§push(this._residentialData);
            if(!_loc6_)
            {
               §§push(§§pop().residentialFieldObjectVo);
               if(_loc5_ || param1)
               {
                  if(§§pop().buildingDTO.currentMasteryBonus)
                  {
                     if(!_loc6_)
                     {
                        addr004f:
                        _loc2_ = this._residentialData.residentialFieldObjectVo.buildingDTO.currentMasteryBonus.highestUnlockedBonusGroup + 1;
                        addr004c:
                     }
                  }
                  var _loc3_:Vector.<MasteryBonusVo> = this.masteryProxy.getMasteryBonusForChallenge(this._residentialData.residentialFieldObjectVo,this._residentialData.residentialFieldObjectVo.buildingDTO.currentMasteryChallenge.config.bonusID,_loc2_);
                  §§goto(addr005d);
               }
               §§goto(addr004f);
            }
            §§goto(addr004c);
         }
         addr005d:
         if(_loc5_)
         {
            facade.sendNotification(MiniLayerConstants.OPEN_MINI_MASTERY_CHALLENGE_COMPLETE_LAYER,{
               "masteryIndex":_loc2_,
               "rewards":_loc3_
            });
         }
         var _loc4_:Object = new Object();
         _loc4_.buildingId = this._residentialData.residentialFieldObjectVo.buildingDTO.id;
         if(!_loc6_)
         {
            _loc4_.masteryChallengeId = this._residentialData.residentialFieldObjectVo.buildingDTO.currentMasteryChallenge.id;
            if(!_loc6_)
            {
               §§goto(addr00f5);
            }
            §§goto(addr0102);
         }
         addr00f5:
         _loc4_.instantFinish = param1;
         if(!_loc6_)
         {
            addr0102:
            facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_MASTERY_BUILDING_PROCESS,_loc4_);
         }
      }
   }
}

