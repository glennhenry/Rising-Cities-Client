package net.bigpoint.cityrama.view.field.ui.components.fieldObjects
{
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class SmartObjectContainer extends Sprite
   {
      
      public static const INVALIDATED:String = "INVALIDATED";
      
      private var _currentImage:DisplayObject;
      
      public function SmartObjectContainer()
      {
         super();
      }
      
      public function invalidate() : void
      {
         dispatchEvent(new Event(INVALIDATED,true,true));
      }
      
      override public function addChild(param1:DisplayObject) : DisplayObject
      {
         this._currentImage = param1;
         return super.addChild(param1);
      }
      
      public function get currentImage() : DisplayObject
      {
         return this._currentImage;
      }
   }
}

