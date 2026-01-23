package net.bigpoint.cityrama.view.featureScreens
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.quest.QuestSystemTypeConstants;
   import net.bigpoint.cityrama.model.featureScreens.vo.BigFeatureScreenVO;
   import net.bigpoint.cityrama.model.menu.MainMenuPopedUpProxy;
   import net.bigpoint.cityrama.model.quest.QuestProxy;
   import net.bigpoint.cityrama.view.architectBook.ArchitectBookMediator;
   import net.bigpoint.cityrama.view.featureScreens.ui.components.BigFeatureScreenPopup;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class BigFeatureScreenMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "BigFeatureScreenMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         NAME = "BigFeatureScreenMediator";
      }
      
      private var _featureData:BigFeatureScreenVO;
      
      private var _questProxy:QuestProxy;
      
      private var _mainMenuePopedUpProxy:MainMenuPopedUpProxy;
      
      private var _openedByQuest:Boolean;
      
      private var _onTopOfArchBook:Boolean;
      
      private var _architectBookMediator:ArchitectBookMediator;
      
      public function BigFeatureScreenMediator(param1:String, param2:Object)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super(param1,param2);
            if(_loc4_)
            {
               this._mainMenuePopedUpProxy = facade.retrieveProxy(MainMenuPopedUpProxy.NAME) as MainMenuPopedUpProxy;
               if(_loc4_ || Boolean(param2))
               {
                  this.component.addEventListener(Event.CLOSE,this.finalCall);
               }
            }
         }
      }
      
      private function finalCall(param1:Event = null) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.component.removeEventListener(Event.CLOSE,this.finalCall);
            if(_loc3_ || _loc2_)
            {
               if(this._onTopOfArchBook)
               {
                  if(_loc3_ || _loc3_)
                  {
                     this._architectBookMediator.component.sideMenuComponent.visible = true;
                     if(!(_loc2_ && _loc3_))
                     {
                        addr007c:
                        facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
                        if(!_loc2_)
                        {
                           addr008f:
                           this._architectBookMediator = null;
                           if(!_loc2_)
                           {
                              this._onTopOfArchBook = false;
                           }
                        }
                     }
                  }
                  §§goto(addr009e);
               }
               §§goto(addr007c);
            }
            addr009e:
            return;
         }
         §§goto(addr008f);
      }
      
      public function setData(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(param1)
            {
               if(!(_loc2_ && _loc2_))
               {
                  this._featureData = param1.feature;
                  if(!_loc2_)
                  {
                     this._openedByQuest = param1.quest;
                     if(_loc3_ || _loc3_)
                     {
                        this.component.data = this._featureData;
                        if(_loc3_ || Boolean(this))
                        {
                           addr007d:
                           this.checkForArchBook();
                        }
                        §§goto(addr0083);
                     }
                  }
               }
               §§goto(addr007d);
            }
         }
         addr0083:
      }
      
      public function get component() : BigFeatureScreenPopup
      {
         return super.viewComponent as BigFeatureScreenPopup;
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.onRegister();
            if(!(_loc2_ && _loc1_))
            {
               this._questProxy = QuestProxy(facade.retrieveProxy(QuestProxy.NAME));
            }
         }
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         if(_loc4_)
         {
            if(this._openedByQuest)
            {
               if(_loc4_ || Boolean(_loc1_))
               {
                  §§push(this._questProxy);
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     §§push(§§pop().currentScreenQuestConfigId);
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        §§push(§§pop());
                        if(!_loc3_)
                        {
                           _loc1_ = §§pop();
                           if(_loc4_)
                           {
                              addr0076:
                              §§push(this._questProxy.currentScreenTaskConfigId);
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 addr0086:
                                 §§push(§§pop());
                              }
                              _loc2_ = §§pop();
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_QUEST_TASK_PROCESS,{
                                    "questConfigId":_loc1_,
                                    "taskConfigId":_loc2_,
                                    "questType":QuestSystemTypeConstants.TUTORIAL
                                 });
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    §§goto(addr00cd);
                                 }
                              }
                           }
                           §§goto(addr00e1);
                        }
                     }
                     §§goto(addr0086);
                  }
                  §§goto(addr0076);
               }
            }
            addr00cd:
            this.finalCall(null);
            if(_loc4_ || Boolean(_loc1_))
            {
               addr00e1:
               super.onRemove();
            }
            return;
         }
         §§goto(addr00e1);
      }
      
      private function checkForArchBook() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            if(this._mainMenuePopedUpProxy.activePoppupConnectedWithMainMenu == ArchitectBookMediator.NAME)
            {
               if(!(_loc2_ && _loc1_))
               {
                  this._architectBookMediator = facade.retrieveMediator(ArchitectBookMediator.NAME) as ArchitectBookMediator;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0053:
                     §§push(this._architectBookMediator);
                     if(!_loc2_)
                     {
                        if(§§pop() != null)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              this._onTopOfArchBook = true;
                              if(_loc1_ || _loc2_)
                              {
                                 addr008a:
                                 §§push(this._architectBookMediator);
                                 if(!_loc2_)
                                 {
                                    §§push(§§pop().component);
                                    if(_loc1_ || _loc2_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc2_ && Boolean(this)))
                                          {
                                             addr00b3:
                                             §§push(this._architectBookMediator);
                                             if(_loc1_ || Boolean(this))
                                             {
                                                addr00ce:
                                                §§push(§§pop().component);
                                                if(!_loc2_)
                                                {
                                                   §§push(§§pop().sideMenuComponent);
                                                   if(_loc1_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc1_)
                                                         {
                                                            addr00ef:
                                                            this._architectBookMediator.component.sideMenuComponent.visible = false;
                                                            addr00ec:
                                                            addr00ea:
                                                            addr00e6:
                                                         }
                                                      }
                                                      §§goto(addr00f2);
                                                   }
                                                   §§goto(addr00ef);
                                                }
                                                §§goto(addr00ec);
                                             }
                                             §§goto(addr00ea);
                                          }
                                       }
                                       §§goto(addr00f2);
                                    }
                                    §§goto(addr00ec);
                                 }
                                 §§goto(addr00ce);
                              }
                              §§goto(addr00e6);
                           }
                           §§goto(addr00b3);
                        }
                        §§goto(addr00f2);
                     }
                     §§goto(addr00ea);
                  }
                  §§goto(addr00b3);
               }
               §§goto(addr008a);
            }
            addr00f2:
            return;
         }
         §§goto(addr0053);
      }
   }
}

