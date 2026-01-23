package net.bigpoint.cityrama.model
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldInteractiveProxy;
   import net.bigpoint.cityrama.model.menu.MenuNavigationConstants;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class ApplicationModeProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "ApplicationModeProxy";
      
      public static const MODE_NORMAL:String = "MODE_NORMAL";
      
      public static const MODE_BUILD:String = "MODE_BUILD";
      
      public static const MODE_DESTROY:String = "MODE_DESTROY";
      
      public static const MODE_MOVE:String = "MODE_MOVE";
      
      public static const MODE_IMPROVEMENT:String = "MODE_IMPROVEMENT";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc2_))
      {
         NAME = "ApplicationModeProxy";
         if(!_loc1_)
         {
            addr0034:
            MODE_NORMAL = "MODE_NORMAL";
            if(!_loc1_)
            {
               MODE_BUILD = "MODE_BUILD";
               if(_loc2_)
               {
                  MODE_DESTROY = "MODE_DESTROY";
                  if(!_loc1_)
                  {
                     addr0068:
                     MODE_MOVE = "MODE_MOVE";
                     if(_loc2_ || _loc2_)
                     {
                        addr007e:
                        MODE_IMPROVEMENT = "MODE_IMPROVEMENT";
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr007e);
               }
               addr0087:
               return;
            }
         }
         §§goto(addr0068);
      }
      §§goto(addr0034);
      
      private var _mode:String;
      
      private var _oldMode:String;
      
      public function ApplicationModeProxy(param1:String = null, param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            super(param1,param2);
         }
      }
      
      public function get mode() : String
      {
         return this._mode;
      }
      
      public function set mode(param1:String) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(param1)))
         {
            if(param1 == this._mode)
            {
               if(!_loc4_)
               {
                  return;
               }
               §§goto(addr0054);
            }
            else
            {
               this._oldMode = this._mode;
               if(_loc3_ || Boolean(this))
               {
                  addr0054:
                  this._mode = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     addr0066:
                     §§push(§§findproperty(sendNotification));
                     §§push("APPLICATION_");
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(§§pop() + this._oldMode);
                        if(_loc3_ || Boolean(this))
                        {
                           §§push("_DEINITIALIZE");
                           if(!_loc4_)
                           {
                              addr00a1:
                              §§push(§§pop() + §§pop());
                              §§push("oldMode");
                           }
                           §§pop().sendNotification(§§pop(),{
                              (§§pop()):this._oldMode,
                              "newMode":this._mode
                           });
                           §§goto(addr00b5);
                        }
                     }
                     §§goto(addr00a1);
                  }
                  addr00b5:
                  var _loc2_:PlayfieldInteractiveProxy = PlayfieldInteractiveProxy(facade.retrieveProxy(PlayfieldInteractiveProxy.NAME));
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     _loc2_.reset();
                     if(!_loc4_)
                     {
                        §§push(§§findproperty(sendNotification));
                        §§push("APPLICATION_");
                        if(_loc3_)
                        {
                           §§push(§§pop() + this._mode);
                           if(!_loc4_)
                           {
                              §§push("_INITIALIZE");
                              if(!(_loc4_ && Boolean(_loc2_)))
                              {
                                 addr0117:
                                 §§push(§§pop() + §§pop());
                                 §§push("oldMode");
                              }
                              §§pop().sendNotification(§§pop(),{
                                 (§§pop()):this._oldMode,
                                 "newMode":this._mode
                              });
                              if(_loc3_)
                              {
                                 sendNotification(ApplicationNotificationConstants.APPLICATION_CHANGE_CURSOR,this._mode);
                                 if(_loc3_)
                                 {
                                    addr0143:
                                    sendNotification(ApplicationNotificationConstants.APPLICATION_MODE_NEW);
                                 }
                              }
                              §§goto(addr014e);
                           }
                        }
                        §§goto(addr0117);
                     }
                     §§goto(addr0143);
                  }
                  addr014e:
                  return;
               }
            }
         }
         §§goto(addr0066);
      }
      
      public function setSubNavigation(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = param1;
         if(!(_loc3_ && Boolean(param1)))
         {
            §§push(MenuNavigationConstants.SUB_CURSOR_NORMAL);
            if(!(_loc3_ && Boolean(_loc2_)))
            {
               §§push(_loc2_);
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  if(§§pop() !== §§pop())
                  {
                     §§push(MenuNavigationConstants.SUB_CURSOR_MOVE);
                     if(!(_loc3_ && Boolean(param1)))
                     {
                        addr00c5:
                        §§push(_loc2_);
                        if(_loc4_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc3_)
                              {
                                 §§push(1);
                                 if(_loc3_)
                                 {
                                 }
                              }
                              else
                              {
                                 §§goto(addr00f8);
                              }
                              §§goto(addr010f);
                           }
                           else
                           {
                              §§goto(addr00f4);
                           }
                        }
                        addr00f4:
                        §§goto(addr00f3);
                     }
                     addr00f3:
                     if(MenuNavigationConstants.SUB_CURSOR_DESTROY === _loc2_)
                     {
                        §§goto(addr00f8);
                     }
                     else
                     {
                        §§push(3);
                     }
                     addr010f:
                     switch(§§pop())
                     {
                        case 0:
                           this.mode = MODE_NORMAL;
                           if(_loc4_)
                           {
                           }
                           break;
                        case 1:
                           this.mode = MODE_MOVE;
                           if(_loc3_ && Boolean(_loc2_))
                           {
                           }
                           break;
                        case 2:
                           this.mode = MODE_DESTROY;
                           if(_loc4_)
                           {
                           }
                     }
                     return;
                  }
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     §§push(0);
                     if(_loc3_)
                     {
                     }
                  }
                  else
                  {
                     addr00f8:
                     §§push(2);
                     if(_loc3_)
                     {
                     }
                  }
                  §§goto(addr010f);
                  §§goto(addr00f8);
               }
               §§goto(addr00f4);
            }
            §§goto(addr00c5);
         }
         §§goto(addr00f8);
      }
      
      public function get oldMode() : String
      {
         return this._oldMode;
      }
   }
}

