package net.bigpoint.cityrama.controller.field
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.FeatureProxy;
   import net.bigpoint.cityrama.model.detailViews.QuestGUIProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.model.quest.QuestProxy;
   import net.bigpoint.cityrama.model.quest.QuestTabProxy;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PlayfieldSwitchFieldObject;
   import net.bigpoint.cityrama.view.miniLayer.SwitchPlayfieldQueryMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.QueryMiniLayer;
   import net.bigpoint.cityrama.view.quest.ui.QuestTabbedBookMediator;
   import net.bigpoint.cityrama.view.quest.ui.components.QuestTabbedPopup;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class PlayfieldSwitchFieldObjectClickedCommand extends SimpleCommand
   {
      
      public function PlayfieldSwitchFieldObjectClickedCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc3_:PopupSettingsVo = null;
         var _loc5_:QuestProxy = null;
         var _loc6_:* = 0;
         var _loc7_:QuestGUIProxy = null;
         var _loc8_:Object = null;
         var _loc2_:PlayfieldSwitchFieldObject = param1.getBody() as PlayfieldSwitchFieldObject;
         if(!(_loc9_ && Boolean(this)))
         {
            §§push(_loc2_ == null);
            if(_loc10_)
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(!_temp_3)
               {
                  if(_loc10_ || Boolean(this))
                  {
                     §§goto(addr0067);
                  }
               }
               §§goto(addr007c);
            }
            addr0067:
            §§pop();
            if(!(_loc9_ && Boolean(_loc2_)))
            {
               addr007c:
               addr0076:
               if(_loc2_.playfieldSwitchFieldObjectVo == null)
               {
                  if(_loc10_ || Boolean(this))
                  {
                     return;
                  }
               }
            }
            var _loc4_:FeatureProxy = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
            if(!_loc9_)
            {
               §§push(_loc2_.playfieldSwitchFieldObjectVo);
               if(_loc10_)
               {
                  §§push(§§pop().enabledFeatureType);
                  if(!_loc9_)
                  {
                     §§push("");
                     if(_loc10_)
                     {
                        §§push(§§pop() == §§pop());
                        if(_loc10_)
                        {
                           var _temp_7:* = §§pop();
                           §§push(_temp_7);
                           §§push(_temp_7);
                           if(!_loc9_)
                           {
                              if(!§§pop())
                              {
                                 if(_loc10_ || Boolean(_loc2_))
                                 {
                                    §§pop();
                                    if(_loc10_ || Boolean(_loc3_))
                                    {
                                       §§push(_loc2_.playfieldSwitchFieldObjectVo);
                                       if(_loc10_)
                                       {
                                          addr00fc:
                                          §§push(§§pop().enabledFeatureType);
                                          if(_loc10_)
                                          {
                                             addr0105:
                                             §§push("");
                                             if(_loc10_ || Boolean(_loc2_))
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(_loc10_ || Boolean(_loc2_))
                                                {
                                                   §§push(!§§pop());
                                                   if(!_loc9_)
                                                   {
                                                      var _temp_12:* = §§pop();
                                                      addr012c:
                                                      §§push(_temp_12);
                                                      if(_temp_12)
                                                      {
                                                         if(_loc10_ || Boolean(param1))
                                                         {
                                                            addr013e:
                                                            §§pop();
                                                            if(_loc10_ || Boolean(param1))
                                                            {
                                                               §§goto(addr0175);
                                                            }
                                                            §§goto(addr017f);
                                                         }
                                                      }
                                                      addr0175:
                                                      §§goto(addr014d);
                                                   }
                                                   §§goto(addr0174);
                                                }
                                                §§goto(addr013e);
                                             }
                                             §§goto(addr0216);
                                          }
                                          §§goto(addr0214);
                                       }
                                       §§goto(addr0211);
                                    }
                                    §§goto(addr014d);
                                 }
                                 §§goto(addr013e);
                              }
                              §§goto(addr0175);
                           }
                           §§goto(addr012c);
                        }
                        §§goto(addr0174);
                     }
                     §§goto(addr0216);
                  }
                  §§goto(addr0105);
               }
               §§goto(addr00fc);
            }
            addr014d:
            §§push(_loc4_.isFeatureEnabled(_loc2_.playfieldSwitchFieldObjectVo.enabledFeatureType));
            if(_loc10_ || Boolean(_loc2_))
            {
               addr0174:
               §§push(§§pop());
            }
            if(§§pop())
            {
               if(!_loc9_)
               {
                  addr017f:
                  _loc3_ = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
                  if(_loc10_ || Boolean(_loc3_))
                  {
                     _loc3_.modal = true;
                     if(_loc10_ || Boolean(_loc3_))
                     {
                        _loc3_.viewClass = QueryMiniLayer;
                        if(!(_loc9_ && Boolean(param1)))
                        {
                           addr01c2:
                           _loc3_.mediatorClass = SwitchPlayfieldQueryMiniLayerMediator;
                           if(!_loc9_)
                           {
                              §§goto(addr01cf);
                           }
                           §§goto(addr01e6);
                        }
                        addr01cf:
                        _loc3_.mediatorName = SwitchPlayfieldQueryMiniLayerMediator.NAME;
                        if(!(_loc9_ && Boolean(param1)))
                        {
                           addr01e6:
                           _loc3_.data = _loc2_.playfieldSwitchFieldObjectVo.targetPlayfieldId;
                           if(_loc10_ || Boolean(_loc3_))
                           {
                              facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
                           }
                        }
                     }
                     §§goto(addr0314);
                  }
                  §§goto(addr01c2);
               }
               else
               {
                  addr021a:
                  _loc5_ = facade.retrieveProxy(QuestProxy.NAME) as QuestProxy;
                  §§push(uint(_loc5_.getActiveQuestIdByLocaleIdentifier(_loc2_.playfieldSwitchFieldObjectVo.questIdentifier)));
                  if(!_loc9_)
                  {
                     _loc6_ = §§pop();
                     §§push(_loc6_);
                  }
                  if(§§pop() != 0)
                  {
                     _loc7_ = facade.retrieveProxy(QuestGUIProxy.NAME) as QuestGUIProxy;
                     _loc8_ = {};
                     _loc8_.quest = _loc7_.getQuestDetailViewVo(_loc6_);
                     if(_loc10_ || Boolean(_loc3_))
                     {
                        _loc8_.index = QuestTabProxy.QUEST_DETAIL_TAB_INDEX;
                     }
                     _loc3_ = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
                     if(!_loc9_)
                     {
                        _loc3_.modal = true;
                        if(!_loc9_)
                        {
                           _loc3_.viewClass = QuestTabbedPopup;
                           if(_loc10_)
                           {
                              _loc3_.mediatorClass = QuestTabbedBookMediator;
                              if(_loc10_ || Boolean(param1))
                              {
                                 addr02ca:
                                 _loc3_.mediatorName = QuestTabbedBookMediator.NAME;
                                 if(_loc10_)
                                 {
                                    addr02e6:
                                    _loc3_.data = _loc8_;
                                    if(_loc10_)
                                    {
                                       facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
                                       if(!(_loc9_ && Boolean(_loc3_)))
                                       {
                                          addr030a:
                                          facade.sendNotification(ApplicationNotificationConstants.QUEST_LAYER_OPENED);
                                       }
                                       §§goto(addr0314);
                                    }
                                 }
                                 §§goto(addr030a);
                              }
                              §§goto(addr02e6);
                           }
                           §§goto(addr02ca);
                        }
                        §§goto(addr030a);
                     }
                  }
               }
            }
            else
            {
               addr0216:
               addr0214:
               addr0211:
               if(_loc2_.playfieldSwitchFieldObjectVo.questIdentifier != "")
               {
                  §§goto(addr021a);
               }
            }
            addr0314:
            return;
         }
         §§goto(addr0076);
      }
   }
}

