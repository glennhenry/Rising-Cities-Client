package net.bigpoint.cityrama.view.featureScreens
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.quest.QuestSystemTypeConstants;
   import net.bigpoint.cityrama.model.featureScreens.vo.FeatureScreenVo;
   import net.bigpoint.cityrama.model.menu.MainMenuPopedUpProxy;
   import net.bigpoint.cityrama.model.quest.QuestProxy;
   import net.bigpoint.cityrama.view.architectBook.ArchitectBookMediator;
   import net.bigpoint.cityrama.view.featureScreens.ui.components.FeatureScreenPopup;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class FeatureScreenMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "FeatureScreenMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc2_))
      {
         NAME = "FeatureScreenMediator";
      }
      
      private var _featureData:FeatureScreenVo;
      
      private var _questProxy:QuestProxy;
      
      private var _mainMenuePopedUpProxy:MainMenuPopedUpProxy;
      
      private var _openedByQuest:Boolean;
      
      private var _onTopOfArchBook:Boolean;
      
      private var _architectBookMediator:ArchitectBookMediator;
      
      public function FeatureScreenMediator(param1:String, param2:Object)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || _loc3_)
         {
            super(param1,param2);
            if(_loc3_ || Boolean(this))
            {
               this._mainMenuePopedUpProxy = facade.retrieveProxy(MainMenuPopedUpProxy.NAME) as MainMenuPopedUpProxy;
               if(_loc3_)
               {
                  addr0066:
                  this.component.addEventListener(Event.CLOSE,this.finalCall);
               }
               return;
            }
         }
         §§goto(addr0066);
      }
      
      private function finalCall(param1:Event = null) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.component.removeEventListener(Event.CLOSE,this.finalCall);
            if(!(_loc3_ && _loc2_))
            {
               if(this._onTopOfArchBook)
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr0052:
                     this._architectBookMediator.component.sideMenuComponent.visible = true;
                     if(_loc2_ || _loc3_)
                     {
                        facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
                        addr006b:
                        if(_loc2_ || _loc2_)
                        {
                           this._architectBookMediator = null;
                           if(!(_loc3_ && _loc2_))
                           {
                              addr00a3:
                              this._onTopOfArchBook = false;
                           }
                        }
                        §§goto(addr00a8);
                     }
                     §§goto(addr00a3);
                  }
                  addr00a8:
                  return;
               }
               §§goto(addr006b);
            }
            §§goto(addr0052);
         }
         §§goto(addr006b);
      }
      
      public function setData(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            if(param1)
            {
               if(_loc2_)
               {
                  this._featureData = param1.feature;
                  if(_loc2_ || Boolean(this))
                  {
                     this._openedByQuest = param1.quest;
                     if(!(_loc3_ && _loc3_))
                     {
                        this.component.data = this._featureData;
                        if(_loc2_ || _loc3_)
                        {
                           addr0081:
                           this.checkForArchBook();
                        }
                        §§goto(addr0087);
                     }
                     §§goto(addr0081);
                  }
               }
            }
         }
         addr0087:
      }
      
      public function get component() : FeatureScreenPopup
      {
         return super.viewComponent as FeatureScreenPopup;
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.onRegister();
            if(_loc2_)
            {
               this._questProxy = QuestProxy(facade.retrieveProxy(QuestProxy.NAME));
            }
         }
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         if(!(_loc4_ && Boolean(this)))
         {
            if(this._openedByQuest)
            {
               if(!(_loc4_ && Boolean(_loc1_)))
               {
                  §§push(this._questProxy);
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(§§pop().currentScreenQuestConfigId);
                     if(_loc3_)
                     {
                        §§push(§§pop());
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           _loc1_ = §§pop();
                           if(!(_loc4_ && Boolean(_loc1_)))
                           {
                              addr0096:
                              addr0084:
                              §§push(this._questProxy.currentScreenTaskConfigId);
                              if(!(_loc4_ && Boolean(this)))
                              {
                                 addr0095:
                                 §§push(§§pop());
                              }
                              _loc2_ = §§pop();
                              if(_loc3_)
                              {
                                 sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_QUEST_TASK_PROCESS,{
                                    "questConfigId":_loc1_,
                                    "taskConfigId":_loc2_,
                                    "questType":QuestSystemTypeConstants.TUTORIAL
                                 });
                                 §§goto(addr009c);
                              }
                           }
                           §§goto(addr00d4);
                        }
                        §§goto(addr0096);
                     }
                     §§goto(addr0095);
                  }
                  §§goto(addr0084);
               }
               addr009c:
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  addr00d4:
                  this.finalCall(null);
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     super.onRemove();
                  }
               }
               return;
            }
         }
         §§goto(addr00d4);
      }
      
      private function checkForArchBook() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            if(this._mainMenuePopedUpProxy.activePoppupConnectedWithMainMenu == ArchitectBookMediator.NAME)
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  addr003b:
                  this._architectBookMediator = facade.retrieveMediator(ArchitectBookMediator.NAME) as ArchitectBookMediator;
                  if(_loc1_)
                  {
                     §§push(this._architectBookMediator);
                     if(_loc1_)
                     {
                        if(§§pop() != null)
                        {
                           if(!_loc2_)
                           {
                              this._onTopOfArchBook = true;
                              if(_loc1_ || Boolean(this))
                              {
                                 addr0082:
                                 §§push(this._architectBookMediator);
                                 if(_loc1_)
                                 {
                                    addr008b:
                                    §§push(§§pop().component);
                                    if(!_loc2_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             §§push(this._architectBookMediator);
                                             if(_loc1_ || _loc1_)
                                             {
                                                addr00be:
                                                §§push(§§pop().component);
                                                if(!_loc2_)
                                                {
                                                   §§push(§§pop().sideMenuComponent);
                                                   if(_loc1_ || _loc2_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            addr00e7:
                                                            this._architectBookMediator.component.sideMenuComponent.visible = false;
                                                            addr00e4:
                                                            addr00e2:
                                                            addr00de:
                                                         }
                                                      }
                                                      §§goto(addr00ea);
                                                   }
                                                   §§goto(addr00e7);
                                                }
                                                §§goto(addr00e4);
                                             }
                                             §§goto(addr00e2);
                                          }
                                          §§goto(addr00de);
                                       }
                                       §§goto(addr00ea);
                                    }
                                    §§goto(addr00e4);
                                 }
                                 §§goto(addr00be);
                              }
                              §§goto(addr00de);
                           }
                        }
                        §§goto(addr00ea);
                     }
                     §§goto(addr008b);
                  }
                  §§goto(addr00de);
               }
               §§goto(addr0082);
            }
            addr00ea:
            return;
         }
         §§goto(addr003b);
      }
   }
}

