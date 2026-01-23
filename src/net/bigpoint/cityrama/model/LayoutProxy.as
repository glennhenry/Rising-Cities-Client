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
      
      private var _width:Number;
      
      private var _height:Number;
      
      private var _inFullScreenBeforeOpenFriendBook:Boolean;
      
      private var _displayState:String = "normal";
      
      public function LayoutProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
      }
      
      public function setDimensions(param1:Number, param2:Number) : void
      {
         this._width = param1;
         this._height = param2;
         sendNotification(ApplicationNotificationConstants.LAYOUT_NEW_DIMENSIONS);
      }
      
      public function get width() : Number
      {
         return this._width;
      }
      
      public function set width(param1:Number) : void
      {
         this._width = param1;
         sendNotification(ApplicationNotificationConstants.LAYOUT_NEW_DIMENSIONS);
      }
      
      public function get height() : Number
      {
         return this._height;
      }
      
      public function set height(param1:Number) : void
      {
         this._height = param1;
         sendNotification(ApplicationNotificationConstants.LAYOUT_NEW_DIMENSIONS);
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
         this._displayState = param1;
         sendNotification(ApplicationNotificationConstants.LAYOUT_DISPLAYSTATE_CHANGED);
      }
      
      public function get inFullScreenBeforeOpenFriendBook() : Boolean
      {
         return this._inFullScreenBeforeOpenFriendBook;
      }
      
      public function set inFullScreenBeforeOpenFriendBook(param1:Boolean) : void
      {
         this._inFullScreenBeforeOpenFriendBook = param1;
      }
      
      public function changeDisplayState() : void
      {
         if(ExternalInterface.available)
         {
            ExternalInterface.call("toggleFullscreen()");
         }
         if(this._displayState == StageDisplayState.FULL_SCREEN)
         {
            this.displayState = StageDisplayState.NORMAL;
         }
         else if(this._displayState == StageDisplayState.NORMAL)
         {
            sendNotification(ClickTaskNotificationConstants.FULLSCREEN);
            this.displayState = StageDisplayState.FULL_SCREEN;
         }
      }
   }
}

