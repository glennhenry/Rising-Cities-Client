package net.bigpoint.cityrama.view.residentSelection
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.detailViews.vo.ResidentSelectionVo;
   import net.bigpoint.cityrama.model.featureScreens.FeatureScreenProxy;
   import net.bigpoint.cityrama.model.menu.MainMenuPopedUpProxy;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.model.residentSelection.ResidentSelectionEvent;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.residentSelection.ui.components.ResidentSelectionPopup;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ResidentSelectionMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "ResidentSelectionMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         NAME = "ResidentSelectionMediator";
      }
      
      private var _mainMenuPopedUpProxy:MainMenuPopedUpProxy;
      
      private var _soundProxy:SoundProxy;
      
      private var _residentSelectionData:ResidentSelectionVo;
      
      private var _closedBySelection:Boolean = false;
      
      public function ResidentSelectionMediator(param1:String, param2:ResidentSelectionPopup)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(this)))
         {
            super(param1,param2);
            if(!(_loc4_ && Boolean(this)))
            {
               addr0035:
               this._mainMenuPopedUpProxy = facade.retrieveProxy(MainMenuPopedUpProxy.NAME) as MainMenuPopedUpProxy;
               if(_loc3_)
               {
                  this._mainMenuPopedUpProxy.activePoppupConnectedWithMainMenu = NAME;
                  if(!_loc4_)
                  {
                     this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
                     if(_loc3_)
                     {
                        addr007f:
                        §§push(this.component);
                        if(!_loc4_)
                        {
                           §§pop().addEventListener(Event.CLOSE,this.handleClose);
                           if(_loc3_)
                           {
                              addr0099:
                              §§push(this.component);
                              if(!(_loc4_ && Boolean(this)))
                              {
                                 addr00aa:
                                 §§push(ResidentSelectionEvent.OPEN_FEATURE_NEEDS);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§pop().addEventListener(§§pop(),this.onOpenNeedFeatureScreen);
                                    if(_loc3_ || _loc3_)
                                    {
                                       addr00d3:
                                       §§push(this.component);
                                       if(_loc3_)
                                       {
                                          addr00e7:
                                          §§push(ResidentSelectionEvent.OPEN_FEATURE_UPGRADE);
                                          if(_loc3_)
                                          {
                                             addr00f2:
                                             §§pop().addEventListener(§§pop(),this.onOpenUpgradeFeatureScreen);
                                             if(_loc3_ || Boolean(param1))
                                             {
                                                addr0110:
                                                this.component.addEventListener(ResidentSelectionEvent.RESIDENT_SELECTED,this.onResidentSelected);
                                                addr010a:
                                             }
                                             §§goto(addr0117);
                                          }
                                          §§goto(addr0110);
                                       }
                                       §§goto(addr010a);
                                    }
                                    §§goto(addr0117);
                                 }
                                 §§goto(addr00f2);
                              }
                              §§goto(addr00e7);
                           }
                           addr0117:
                           return;
                        }
                        §§goto(addr00aa);
                     }
                     §§goto(addr00d3);
                  }
                  §§goto(addr007f);
               }
               §§goto(addr00d3);
            }
            §§goto(addr0099);
         }
         §§goto(addr0035);
      }
      
      private function onResidentSelected(param1:ResidentSelectionEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(this._soundProxy);
            if(!(_loc3_ && _loc2_))
            {
               §§pop().playButtonClick();
               if(_loc2_)
               {
                  §§push(this._residentSelectionData);
                  if(_loc2_)
                  {
                     if(!§§pop().isSwap)
                     {
                        if(!_loc3_)
                        {
                           sendNotification(ApplicationNotificationConstants.RESIDENT_SELECTED,{
                              "type":param1.residentType,
                              "resident":this._residentSelectionData.residential
                           });
                           if(!_loc3_)
                           {
                              sendNotification(VirtualTaskNotificationInterest.RESIDENT_SELECTED_FOR_MOVEIN);
                              if(_loc2_)
                              {
                                 sendNotification(ApplicationNotificationConstants.CHECK_MASTERY_TRAIT_SELECTION);
                                 addr0079:
                                 if(!_loc3_)
                                 {
                                    addr0101:
                                    this._closedBySelection = true;
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       addr0117:
                                       this._soundProxy.playInaugurateResidential();
                                       addr0113:
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          addr0129:
                                          this.handleClose(null);
                                       }
                                    }
                                 }
                                 §§goto(addr012f);
                              }
                           }
                           §§goto(addr0101);
                        }
                        §§goto(addr0113);
                     }
                     else
                     {
                        addr009b:
                        if(this._residentSelectionData.residential.residentialFieldObjectVo.isHarvestReady)
                        {
                           if(!_loc3_)
                           {
                              sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_HARVESTPHASE_PROCESS,{
                                 "vo":this._residentSelectionData.residential.billboardObjectVo,
                                 "silent":true
                              });
                              if(!_loc3_)
                              {
                                 addr00cf:
                                 sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_SWAP_RESIDENT,{
                                    "billboard":this._residentSelectionData.residential.billboardObjectVo,
                                    "popType":param1.residentType
                                 });
                                 if(_loc2_)
                                 {
                                    §§goto(addr0101);
                                 }
                                 §§goto(addr012f);
                              }
                              §§goto(addr0129);
                           }
                           §§goto(addr012f);
                        }
                        §§goto(addr00cf);
                     }
                     return;
                  }
                  §§goto(addr009b);
               }
               §§goto(addr0129);
            }
            §§goto(addr0117);
         }
         §§goto(addr0079);
      }
      
      private function onOpenUpgradeFeatureScreen(param1:ResidentSelectionEvent) : void
      {
      }
      
      private function onOpenNeedFeatureScreen(param1:ResidentSelectionEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = new Object();
         if(!_loc3_)
         {
            _loc2_.feature = FeatureScreenProxy.FEATURE_NEEDS;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc2_.quest = false;
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0057:
                  sendNotification(ApplicationNotificationConstants.OPEN_FEATURESCREEN,_loc2_);
               }
               §§goto(addr0062);
            }
            §§goto(addr0057);
         }
         addr0062:
      }
      
      private function handleClose(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(this.component);
            if(!_loc3_)
            {
               §§pop().removeEventListener(Event.CLOSE,this.handleClose);
               if(_loc2_)
               {
                  addr0031:
                  §§push(this.component);
                  if(!_loc3_)
                  {
                     addr0039:
                     §§push(ResidentSelectionEvent.OPEN_FEATURE_NEEDS);
                     if(!_loc3_)
                     {
                        §§pop().removeEventListener(§§pop(),this.onOpenNeedFeatureScreen);
                        if(!_loc3_)
                        {
                           §§push(this.component);
                           if(_loc2_)
                           {
                              addr0065:
                              §§push(ResidentSelectionEvent.OPEN_FEATURE_UPGRADE);
                              if(_loc2_)
                              {
                                 addr0070:
                                 §§pop().removeEventListener(§§pop(),this.onOpenUpgradeFeatureScreen);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§goto(addr009a);
                                 }
                                 §§goto(addr00a6);
                              }
                              addr009a:
                              this.component.removeEventListener(ResidentSelectionEvent.RESIDENT_SELECTED,this.onResidentSelected);
                              §§goto(addr0094);
                           }
                           addr0094:
                           §§goto(addr0091);
                        }
                        addr0091:
                        if(!_loc3_)
                        {
                           addr00a6:
                           facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.getMediatorName());
                           if(!_loc3_)
                           {
                              addr00ba:
                              this._mainMenuPopedUpProxy.activePoppupConnectedWithMainMenu = null;
                           }
                        }
                        return;
                     }
                     §§goto(addr0070);
                  }
                  §§goto(addr0065);
               }
               §§goto(addr00ba);
            }
            §§goto(addr0039);
         }
         §§goto(addr0031);
      }
      
      public function get component() : ResidentSelectionPopup
      {
         return super.viewComponent as ResidentSelectionPopup;
      }
      
      public function setData(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(param1 != null)
            {
               if(_loc2_)
               {
                  this._residentSelectionData = param1 as ResidentSelectionVo;
                  if(_loc2_)
                  {
                     addr003b:
                     this.component.data = this._residentSelectionData;
                  }
                  §§goto(addr0044);
               }
               §§goto(addr003b);
            }
         }
         addr0044:
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super.onRemove();
            if(_loc1_)
            {
               §§goto(addr0031);
            }
            §§goto(addr0046);
         }
         addr0031:
         if(!this._closedBySelection)
         {
            if(!(_loc2_ && Boolean(this)))
            {
               addr0046:
               sendNotification(VirtualTaskNotificationInterest.RESIDENT_SELECTIONLAYER_CLOSED);
            }
         }
      }
   }
}

