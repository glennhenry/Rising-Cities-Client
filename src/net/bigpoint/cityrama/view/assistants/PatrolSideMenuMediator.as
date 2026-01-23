package net.bigpoint.cityrama.view.assistants
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.assistants.AssistViewProxy;
   import net.bigpoint.cityrama.model.assistants.vo.PatrolViewVo;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.assistants.ui.components.PatrolInfoComponent;
   import net.bigpoint.cityrama.view.assistants.ui.components.PatrolSideMenu;
   import net.bigpoint.cityrama.view.miniLayer.PatrolMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.PatrolMiniLayer;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class PatrolSideMenuMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "PatrolSideMenuMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         NAME = "PatrolSideMenuMediator";
      }
      
      private var _assiViewProxy:AssistViewProxy;
      
      private var _playfieldObjectsProxy:PlayfieldObjectsProxy;
      
      private var _data:PatrolViewVo;
      
      public function PatrolSideMenuMediator(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            super(NAME,param1);
         }
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.onRegister();
            if(_loc2_ || _loc1_)
            {
               this._assiViewProxy = facade.retrieveProxy(AssistViewProxy.NAME) as AssistViewProxy;
               if(!_loc1_)
               {
                  addr0049:
                  this._playfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
                  if(!_loc1_)
                  {
                     this._data = this._assiViewProxy.getPatrolViewVo();
                     §§goto(addr005e);
                  }
               }
               §§goto(addr0097);
            }
            addr005e:
            if(!(_loc1_ && _loc2_))
            {
               this.component.data = this._data;
               if(_loc2_ || _loc2_)
               {
                  addr0097:
                  this.setupListener();
               }
            }
            return;
         }
         §§goto(addr0049);
      }
      
      private function setupListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this.component);
            if(_loc1_ || Boolean(this))
            {
               §§push(PatrolSideMenu.CLICK_INFO);
               if(_loc1_ || Boolean(this))
               {
                  §§pop().addEventListener(§§pop(),this.onClick);
                  if(_loc1_)
                  {
                     addr004e:
                     §§push(this.component);
                     if(!(_loc2_ && _loc1_))
                     {
                        addr005e:
                        §§push(PatrolSideMenu.HIDE_INFO);
                        if(_loc1_ || _loc2_)
                        {
                           addr007b:
                           §§pop().addEventListener(§§pop(),this.onMouseOut);
                           if(!(_loc2_ && _loc1_))
                           {
                              addr0099:
                              this.component.addEventListener(PatrolSideMenu.SHOW_INFO,this.onMouseOver);
                              addr0093:
                           }
                           §§goto(addr00a1);
                        }
                        §§goto(addr0099);
                     }
                     §§goto(addr0093);
                  }
                  addr00a1:
                  return;
               }
               §§goto(addr007b);
            }
            §§goto(addr005e);
         }
         §§goto(addr004e);
      }
      
      private function onClick(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:PopupSettingsVo = null;
         if(!_loc3_)
         {
            if(!this._data.isActive)
            {
               if(_loc4_)
               {
                  addr002e:
                  this.component.menuContainer.removeAllElements();
               }
               _loc2_ = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
               if(_loc4_)
               {
                  _loc2_.modal = true;
                  if(_loc4_ || Boolean(param1))
                  {
                     _loc2_.viewClass = PatrolMiniLayer;
                     if(_loc4_ || _loc3_)
                     {
                        addr007e:
                        _loc2_.mediatorClass = PatrolMiniLayerMediator;
                        if(_loc4_ || _loc3_)
                        {
                           _loc2_.mediatorName = PatrolMiniLayerMediator.NAME;
                           if(!_loc3_)
                           {
                              _loc2_.data = this._assiViewProxy.getPatrolOptions();
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 addr00c4:
                                 facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
                              }
                           }
                        }
                        §§goto(addr00cf);
                     }
                     §§goto(addr00c4);
                  }
                  §§goto(addr00cf);
               }
               §§goto(addr007e);
            }
            addr00cf:
            return;
         }
         §§goto(addr002e);
      }
      
      private function onMouseOut(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.component.menuContainer.removeAllElements();
         }
      }
      
      private function onMouseOver(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:PatrolInfoComponent = new PatrolInfoComponent();
         if(!(_loc3_ && Boolean(param1)))
         {
            _loc2_.data = this._assiViewProxy.getPatrolViewVo();
            if(_loc4_)
            {
               addr004c:
               this.component.menuContainer.addElement(_loc2_);
            }
            return;
         }
         §§goto(addr004c);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.ASSIST_DATA_CHANGE,ApplicationNotificationConstants.TIMESTAMP_SET,ApplicationNotificationConstants.SHOW_GUI,ApplicationNotificationConstants.INFRASTRUCTURE_FEATURE_STATUS_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = param1.getName();
         if(_loc3_)
         {
            §§push(ApplicationNotificationConstants.INFRASTRUCTURE_FEATURE_STATUS_CHANGED);
            if(_loc3_ || Boolean(_loc2_))
            {
               §§push(_loc2_);
               if(!_loc4_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc3_)
                     {
                        §§push(0);
                        if(_loc3_)
                        {
                        }
                     }
                     else
                     {
                        addr0210:
                        §§push(2);
                        if(_loc3_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(ApplicationNotificationConstants.ASSIST_DATA_CHANGE);
                     if(_loc3_)
                     {
                        addr01b3:
                        §§push(_loc2_);
                        if(!_loc4_)
                        {
                           addr01ba:
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc4_ && Boolean(param1)))
                              {
                                 §§push(1);
                                 if(_loc4_)
                                 {
                                 }
                              }
                              else
                              {
                                 §§goto(addr0210);
                              }
                           }
                           else
                           {
                              §§push(ApplicationNotificationConstants.TIMESTAMP_SET);
                              if(!(_loc4_ && Boolean(param1)))
                              {
                                 addr01eb:
                                 §§push(_loc2_);
                                 if(!(_loc4_ && Boolean(_loc2_)))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc4_)
                                       {
                                          §§goto(addr0210);
                                       }
                                       else
                                       {
                                          addr0225:
                                          §§push(3);
                                          if(_loc3_)
                                          {
                                          }
                                       }
                                       §§goto(addr023c);
                                    }
                                    else
                                    {
                                       §§goto(addr0221);
                                    }
                                 }
                                 addr0221:
                                 §§goto(addr0220);
                              }
                              addr0220:
                              if(ApplicationNotificationConstants.SHOW_GUI === _loc2_)
                              {
                                 §§goto(addr0225);
                              }
                              else
                              {
                                 §§push(4);
                              }
                              §§goto(addr023c);
                           }
                           §§goto(addr023c);
                        }
                        §§goto(addr0221);
                     }
                     §§goto(addr01eb);
                  }
                  addr023c:
                  switch(§§pop())
                  {
                     case 0:
                        §§push(this.component);
                        if(!_loc4_)
                        {
                           §§push(this.component);
                           if(!_loc4_)
                           {
                              §§push(this._playfieldObjectsProxy);
                              if(_loc3_)
                              {
                                 §§push(§§pop().infrastructureBuildingList.length > 0);
                                 if(_loc3_ || Boolean(_loc2_))
                                 {
                                    var _temp_6:* = §§pop();
                                    §§push(_temp_6);
                                    §§push(_temp_6);
                                    if(_loc3_ || Boolean(_loc2_))
                                    {
                                       _loc2_ = §§pop();
                                       if(!_loc4_)
                                       {
                                          §§pop().includeInLayout = §§pop();
                                          if(_loc3_)
                                          {
                                             §§push(_loc2_);
                                             if(_loc3_ || Boolean(this))
                                             {
                                                if(_loc3_)
                                                {
                                                   §§pop().visible = §§pop();
                                                   if(_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   addr0096:
                                                   §§push(this.component);
                                                   if(_loc3_ || Boolean(param1))
                                                   {
                                                      addr00a6:
                                                      §§pop().data = this._data;
                                                      if(_loc4_ && Boolean(_loc2_))
                                                      {
                                                      }
                                                      break;
                                                   }
                                                   addr014f:
                                                   this.component.includeInLayout = _loc2_ = false;
                                                   addr0152:
                                                   addr0151:
                                                   §§push(_loc2_);
                                                   addr014e:
                                                   addr014d:
                                                   addr014c:
                                                   addr0149:
                                                }
                                                addr0154:
                                                §§pop().visible = §§pop();
                                                if(_loc4_ && _loc3_)
                                                {
                                                }
                                                break;
                                             }
                                             §§goto(addr0152);
                                          }
                                          §§goto(addr0151);
                                       }
                                    }
                                    else
                                    {
                                       addr010f:
                                       _loc2_ = §§pop();
                                       if(!_loc4_)
                                       {
                                          §§pop().includeInLayout = §§pop();
                                          if(_loc3_ || Boolean(this))
                                          {
                                             §§push(_loc2_);
                                             if(_loc3_)
                                             {
                                                if(_loc3_)
                                                {
                                                   §§pop().visible = §§pop();
                                                   if(_loc4_ && _loc3_)
                                                   {
                                                   }
                                                   break;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr0152);
                                             }
                                             §§goto(addr0154);
                                          }
                                          else
                                          {
                                             §§goto(addr0151);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr014f);
                                       }
                                       §§goto(addr0151);
                                    }
                                    §§goto(addr014f);
                                 }
                                 else
                                 {
                                    addr0109:
                                    var _temp_14:* = §§pop();
                                    §§push(_temp_14);
                                    §§push(_temp_14);
                                    if(_loc3_)
                                    {
                                       §§goto(addr010f);
                                    }
                                    else
                                    {
                                       §§goto(addr014e);
                                    }
                                 }
                                 §§goto(addr014e);
                              }
                              else
                              {
                                 addr00ea:
                                 §§push(§§pop().infrastructureBuildingList.length > 0);
                                 if(_loc3_ || Boolean(param1))
                                 {
                                    §§goto(addr0109);
                                 }
                                 else
                                 {
                                    §§goto(addr014d);
                                 }
                              }
                              §§goto(addr014d);
                           }
                           §§goto(addr014c);
                        }
                        §§goto(addr00a6);
                     case 1:
                     case 2:
                        this._data = this._assiViewProxy.getPatrolViewVo();
                        if(_loc4_)
                        {
                           break;
                        }
                        §§goto(addr0096);
                        break;
                     case 3:
                        if(param1.getBody() == true)
                        {
                           if(!(_loc3_ || Boolean(param1)))
                           {
                              break;
                           }
                           §§push(this.component);
                           if(_loc3_)
                           {
                              §§push(this.component);
                              if(!_loc4_)
                              {
                                 §§goto(addr00ea);
                                 §§push(this._playfieldObjectsProxy);
                              }
                              else
                              {
                                 §§goto(addr014c);
                              }
                              §§goto(addr014d);
                           }
                           else
                           {
                              §§goto(addr0149);
                           }
                        }
                        else
                        {
                           §§push(this.component);
                        }
                        §§goto(addr0149);
                  }
                  return;
               }
               §§goto(addr01ba);
            }
            §§goto(addr01b3);
         }
         §§goto(addr0225);
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super.onRemove();
            if(!_loc1_)
            {
               §§push(this.component);
               if(_loc2_ || _loc2_)
               {
                  §§push(PatrolSideMenu.CLICK_INFO);
                  if(!(_loc1_ && _loc2_))
                  {
                     §§pop().removeEventListener(§§pop(),this.onClick);
                     if(_loc2_ || _loc2_)
                     {
                        §§push(this.component);
                        if(_loc2_)
                        {
                           addr0071:
                           §§push(PatrolSideMenu.HIDE_INFO);
                           if(_loc2_ || _loc1_)
                           {
                              §§goto(addr008e);
                           }
                           §§goto(addr00ac);
                        }
                        §§goto(addr00a6);
                     }
                     §§goto(addr00a3);
                  }
                  addr008e:
                  §§pop().removeEventListener(§§pop(),this.onMouseOut);
                  if(_loc2_ || Boolean(this))
                  {
                     addr00ac:
                     this.component.removeEventListener(PatrolSideMenu.SHOW_INFO,this.onMouseOver);
                     addr00a6:
                     addr00a3:
                  }
                  §§goto(addr00b4);
               }
               §§goto(addr0071);
            }
            addr00b4:
            return;
         }
         §§goto(addr00a3);
      }
      
      public function get component() : PatrolSideMenu
      {
         return super.viewComponent as PatrolSideMenu;
      }
   }
}

