package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Matrix;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   import net.bigpoint.fieldLibrary.utils.FieldUtils;
   
   public class HitZoneAssistant
   {
      
      public static const SCALE_FACTOR:Number = 3;
      
      private var _hitBoxContainer:Sprite;
      
      private var _bitmapData:BitmapData;
      
      private var _smartBillboardContainer:SmartObjectContainer;
      
      private var _hitZoneBuild:Boolean;
      
      public function HitZoneAssistant(param1:Sprite, param2:SmartObjectContainer)
      {
         super();
         this._hitZoneBuild = false;
         this._hitBoxContainer = param1;
         this._smartBillboardContainer = param2;
         this._smartBillboardContainer.addEventListener(SmartObjectContainer.INVALIDATED,this.invalidateHitZone);
      }
      
      private function invalidateHitZone(param1:Event) : void
      {
         param1.stopPropagation();
         var _loc2_:BitmapData = this.getBitmapDataFast(this._smartBillboardContainer.currentImage);
         if(_loc2_)
         {
            this._bitmapData = this.setBitmapData(_loc2_);
            this.buildHitZone();
         }
      }
      
      private function buildHitZone() : void
      {
         var _loc1_:DisplayObject = FieldUtils.getOutline(this._bitmapData,0,0,null);
         _loc1_.scaleX = _loc1_.scaleY = SCALE_FACTOR;
         _loc1_.alpha = 0;
         var _loc2_:SimpleButton = new SimpleButton(_loc1_,null,null,_loc1_);
         while(this._hitBoxContainer.numChildren)
         {
            this._hitBoxContainer.removeChildAt(0);
         }
         _loc2_.useHandCursor = false;
         this._hitBoxContainer.addChild(_loc2_);
         _loc2_.x = this._smartBillboardContainer.currentImage.x;
         _loc2_.y = this._smartBillboardContainer.currentImage.y;
         this._bitmapData.dispose();
      }
      
      private function setBitmapData(param1:BitmapData) : BitmapData
      {
         var _loc2_:Matrix = new Matrix();
         var _loc3_:Number = 0.5 / SCALE_FACTOR;
         _loc2_.scale(_loc3_,_loc3_);
         var _loc4_:BitmapData = new BitmapData(param1.width * _loc3_,param1.height * _loc3_,true,0);
         _loc4_.draw(param1,_loc2_,null,null,null,true);
         param1.dispose();
         return _loc4_;
      }
      
      private function getBitmapDataFast(param1:DisplayObject) : BitmapData
      {
         var _loc3_:BitmapData = null;
         var _loc2_:DisplayObject = param1;
         if(_loc2_ != null)
         {
            if(Boolean(_loc2_.width) && Boolean(_loc2_.height))
            {
               _loc3_ = new BitmapData(_loc2_.width,_loc2_.height,true,16711680);
               _loc3_.lock();
               _loc3_.draw(_loc2_);
               _loc3_.unlock();
               return _loc3_;
            }
         }
         return null;
      }
   }
}

