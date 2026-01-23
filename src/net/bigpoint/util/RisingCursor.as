package net.bigpoint.util
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.ui.Mouse;
   import flash.ui.MouseCursorData;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeLoadServiceDynamic;
   
   public class RisingCursor extends Bitmap
   {
      
      private var _libName:String;
      
      private var _assetName:String;
      
      private var _frameName:String;
      
      private var _cursorName:String;
      
      private var _cursorData:MouseCursorData = new MouseCursorData();
      
      private var _customData:Vector.<BitmapData> = new Vector.<BitmapData>();
      
      private var _isRegistered:Boolean;
      
      public function RisingCursor(param1:String, param2:String, param3:String, param4:String = null)
      {
         super();
         this._assetName = param2;
         this._libName = param1;
         this._frameName = param4;
         this._cursorName = param3;
         this._isRegistered = false;
         this.init();
      }
      
      private function registerCursor() : void
      {
         this._customData[0] = this.bitmapData;
         this._cursorData.hotSpot = new Point(0,0);
         this._cursorData.data = this._customData;
         Mouse.registerCursor(this._cursorName,this._cursorData);
         this._isRegistered = true;
      }
      
      private function init(param1:Event = null) : void
      {
         var _loc3_:Bitmap = null;
         var _loc4_:DisplayObject = null;
         var _loc5_:BitmapData = null;
         var _loc2_:FileRuntimeLoadServiceDynamic = FileRuntimeLoadServiceDynamic.getInstance();
         if(!_loc2_.libAllReadyLoaded(this._libName))
         {
            _loc2_.addEventListener(this._assetName,this.init);
            _loc2_.checkSWFArrayLoaded([this._libName],this._assetName);
         }
         else
         {
            _loc2_.removeEventListener(this._assetName,this.init);
            if(this._frameName)
            {
               _loc3_ = _loc2_.getBitmap(this._assetName,this._frameName,true,true);
               _loc4_ = _loc3_ as DisplayObject;
               _loc5_ = new BitmapData(32,32,true,0);
               _loc5_.lock();
               _loc5_.draw(_loc4_);
               _loc5_.unlock();
               this.bitmapData = _loc5_;
               this.registerCursor();
            }
         }
      }
      
      public function get isRegistered() : Boolean
      {
         return this._isRegistered;
      }
   }
}

