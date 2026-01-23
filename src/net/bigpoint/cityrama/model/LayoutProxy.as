package net.bigpoint.cityrama.model
{
   import flash.display.StageDisplayState;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.quest.ClickTaskNotificationConstants;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class LayoutProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "LayoutProxy";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc1_))
      {
         NAME = "LayoutProxy";
      }
      
      private var _width:Number;
      
      private var _height:Number;
      
      private var _inFullScreenBeforeOpenFriendBook:Boolean;
      
      private var _displayState:String = "normal";
      
      public function LayoutProxy(param1:String = null, param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            super(param1,param2);
         }
      }
      
      public function setDimensions(param1:Number, param2:Number) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            this._width = param1;
            if(_loc3_ || Boolean(param1))
            {
               this._height = param2;
               if(!(_loc4_ && Boolean(param2)))
               {
                  addr004b:
                  sendNotification(ApplicationNotificationConstants.LAYOUT_NEW_DIMENSIONS);
               }
               §§goto(addr0055);
            }
            §§goto(addr004b);
         }
         addr0055:
      }
      
      public function get width() : Number
      {
         return this._width;
      }
      
      public function set width(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._width = param1;
            if(!(_loc2_ && Boolean(param1)))
            {
               sendNotification(ApplicationNotificationConstants.LAYOUT_NEW_DIMENSIONS);
            }
         }
      }
      
      public function get height() : Number
      {
         return this._height;
      }
      
      public function set height(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._height = param1;
            if(!_loc3_)
            {
               addr0023:
               sendNotification(ApplicationNotificationConstants.LAYOUT_NEW_DIMENSIONS);
            }
            return;
         }
         §§goto(addr0023);
      }
      
      public function get center() : Point
      {
         return new Point(this.width / 2,this.height / 2);
      }
      
      public function get displayState() : String
      {
         return this._displayState;
      }
      
      public function set displayState(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._displayState = param1;
            if(!(_loc3_ && _loc3_))
            {
               sendNotification(ApplicationNotificationConstants.LAYOUT_DISPLAYSTATE_CHANGED);
            }
         }
      }
      
      public function get inFullScreenBeforeOpenFriendBook() : Boolean
      {
         return this._inFullScreenBeforeOpenFriendBook;
      }
      
      public function set inFullScreenBeforeOpenFriendBook(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._inFullScreenBeforeOpenFriendBook = param1;
         }
      }
      
      public function changeDisplayState() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            if(ExternalInterface.available)
            {
               if(!_loc1_)
               {
                  ExternalInterface.call("toggleFullscreen()");
                  if(_loc2_ || _loc2_)
                  {
                     addr003d:
                     §§push(this._displayState);
                     if(_loc2_ || Boolean(this))
                     {
                        if(§§pop() == StageDisplayState.FULL_SCREEN)
                        {
                           if(!(_loc1_ && _loc2_))
                           {
                              addr006f:
                              this.displayState = StageDisplayState.NORMAL;
                              if(_loc1_)
                              {
                                 addr00a7:
                                 sendNotification(ClickTaskNotificationConstants.FULLSCREEN);
                                 if(_loc2_ || _loc1_)
                                 {
                                    addr00bf:
                                    this.displayState = StageDisplayState.FULL_SCREEN;
                                 }
                              }
                              §§goto(addr00c9);
                           }
                           §§goto(addr00a7);
                        }
                        else
                        {
                           addr0086:
                           if(this._displayState == StageDisplayState.NORMAL)
                           {
                              if(!(_loc1_ && _loc1_))
                              {
                                 §§goto(addr00a7);
                              }
                           }
                        }
                        addr00c9:
                        return;
                     }
                     §§goto(addr0086);
                  }
               }
               §§goto(addr00bf);
            }
            §§goto(addr003d);
         }
         §§goto(addr006f);
      }
   }
}

