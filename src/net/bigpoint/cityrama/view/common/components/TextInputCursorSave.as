package net.bigpoint.cityrama.view.common.components
{
   import flash.display.DisplayObject;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.ApplicationFacade;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.init.SystemManager;
   import net.bigpoint.cityrama.model.field.FieldCursorProxy;
   import spark.components.TextInput;
   
   public class TextInputCursorSave extends TextInput
   {
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc1_)
      {
         _skinParts = {
            "textDisplay":false,
            "promptDisplay":false
         };
      }
      
      private var _focusedIn:Boolean = false;
      
      private var _listenerAdded:Boolean = false;
      
      public function TextInputCursorSave()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
      
      override protected function initializationComplete() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super.initializationComplete();
            if(_loc2_ || _loc2_)
            {
               if(!stage)
               {
                  if(_loc2_)
                  {
                     return;
                  }
                  this.addEventListener(MouseEvent.MOUSE_OUT,this.bruteForceReset,false,0,true);
                  addr0082:
                  if(!(_loc1_ && _loc2_))
                  {
                     addr00ab:
                     this._listenerAdded = true;
                     if(!_loc1_)
                     {
                        addr00b6:
                        this._focusedIn = false;
                     }
                  }
               }
               else if(!this._listenerAdded)
               {
                  if(!_loc1_)
                  {
                     SystemManager.rawStage.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.system_mouseDownHandler,false,0,true);
                     if(_loc2_)
                     {
                        §§goto(addr0082);
                     }
                     §§goto(addr00ab);
                  }
                  §§goto(addr00b6);
               }
            }
            return;
         }
         §§goto(addr0082);
      }
      
      override public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_)
         {
            super.removeEventListener(param1,param2,param3);
         }
      }
      
      private function bruteForceReset(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            ApplicationFacade.getInstance().sendNotification(ApplicationNotificationConstants.APPLICATION_CHANGE_CURSOR,FieldCursorProxy.CURSOR_RESET);
         }
      }
      
      private function system_mouseDownHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            §§push(!param1.target);
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop() == this);
               if(_loc3_ || Boolean(this))
               {
                  addr0041:
                  §§push(!§§pop());
                  if(_loc3_ || _loc2_)
                  {
                     var _temp_6:* = §§pop();
                     §§push(_temp_6);
                     §§push(_temp_6);
                     if(!(_loc2_ && Boolean(this)))
                     {
                        if(§§pop())
                        {
                           if(!_loc2_)
                           {
                              §§pop();
                              if(!(_loc2_ && Boolean(param1)))
                              {
                                 §§push(!this.contains(param1.target as DisplayObject));
                                 if(!(_loc2_ && Boolean(param1)))
                                 {
                                    §§goto(addr009b);
                                 }
                                 §§goto(addr00d5);
                              }
                              §§goto(addr00fc);
                           }
                           §§goto(addr00c3);
                        }
                        §§goto(addr009b);
                     }
                     §§goto(addr00c4);
                  }
                  §§goto(addr00df);
               }
               addr009b:
               if(§§pop())
               {
                  if(!(_loc2_ && Boolean(param1)))
                  {
                     §§push(this._focusedIn);
                     if(!_loc2_)
                     {
                        §§push(§§pop());
                        if(!(_loc2_ && _loc2_))
                        {
                           addr00c3:
                           var _temp_12:* = §§pop();
                           addr00c4:
                           §§push(_temp_12);
                           if(_temp_12)
                           {
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr00d5:
                                 §§pop();
                                 if(!_loc2_)
                                 {
                                    §§goto(addr00df);
                                 }
                                 §§goto(addr013e);
                              }
                           }
                        }
                     }
                     addr00df:
                     if(Boolean(stage))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr00f0:
                           if(stage)
                           {
                              if(_loc3_)
                              {
                                 addr00fc:
                                 stage.focus = null;
                                 if(_loc3_ || _loc2_)
                                 {
                                    addr011d:
                                    ApplicationFacade.getInstance().sendNotification(ApplicationNotificationConstants.APPLICATION_CHANGE_CURSOR,FieldCursorProxy.CURSOR_RESET);
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       addr013e:
                                       this._focusedIn = false;
                                    }
                                    §§goto(addr0143);
                                 }
                                 §§goto(addr013e);
                              }
                              §§goto(addr0143);
                           }
                           §§goto(addr011d);
                        }
                     }
                     §§goto(addr0143);
                  }
                  §§goto(addr00f0);
               }
               §§goto(addr0143);
            }
            §§goto(addr0041);
         }
         addr0143:
      }
      
      override protected function focusInHandler(param1:FocusEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            super.focusInHandler(param1);
            if(!(_loc2_ && _loc3_))
            {
               this._focusedIn = true;
            }
         }
      }
      
      override protected function focusOutHandler(param1:FocusEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.focusOutHandler(param1);
         }
      }
   }
}

