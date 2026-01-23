package net.bigpoint.cityrama.view.field.ui.components.fieldObjects
{
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class SmartObjectContainer extends Sprite
   {
      
      public static const INVALIDATED:String = "INVALIDATED";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         INVALIDATED = "INVALIDATED";
      }
      
      private var _currentImage:DisplayObject;
      
      public function SmartObjectContainer()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public function invalidate() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            dispatchEvent(new Event(INVALIDATED,true,true));
         }
      }
      
      override public function addChild(param1:DisplayObject) : DisplayObject
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._currentImage = param1;
         }
         return super.addChild(param1);
      }
      
      public function get currentImage() : DisplayObject
      {
         return this._currentImage;
      }
   }
}

