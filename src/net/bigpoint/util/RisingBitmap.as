package net.bigpoint.util
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeLoadServiceDynamic;
   
   public class RisingBitmap extends Bitmap
   {
      
      private var _preloader:ImagePreloaderSmall;
      
      private var _libName:String;
      
      private var _assetName:String;
      
      private var _frameName:String;
      
      private var _centerWidth:Boolean = false;
      
      private var _centerHeight:Boolean = false;
      
      public function RisingBitmap(param1:String, param2:String, param3:String = null, param4:Boolean = false, param5:Boolean = false)
      {
         super();
         this._assetName = param2;
         this._libName = param1;
         this._frameName = param3;
         this._centerWidth = param4;
         this._centerHeight = param5;
         this.init();
      }
      
      private function init(param1:Event = null) : void
      {
         var _loc3_:DisplayObject = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Bitmap = null;
         var _loc2_:FileRuntimeLoadServiceDynamic = FileRuntimeLoadServiceDynamic.getInstance();
         if(!_loc2_.libAllReadyLoaded(this._libName))
         {
            _loc2_.addEventListener(this._assetName,this.init);
            _loc2_.checkSWFArrayLoaded([this._libName],this._assetName);
            this._preloader = new ImagePreloaderSmall();
            _loc3_ = this._preloader as DisplayObject;
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            _loc4_.lock();
            _loc4_.draw(_loc3_);
            _loc4_.unlock();
            if(this._centerWidth)
            {
               this.x = -_loc4_.width / 2;
            }
            if(this._centerHeight)
            {
               this.y = -_loc4_.height / 2;
            }
            this.bitmapData = _loc4_;
            return;
         }
         if(this._preloader != null)
         {
            this._preloader = null;
         }
         _loc2_.removeEventListener(this._assetName,this.init);
         if(this._frameName)
         {
            _loc5_ = _loc2_.getBitmap(this._assetName,this._frameName,true,true);
            _loc3_ = _loc5_ as DisplayObject;
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            _loc4_.lock();
            _loc4_.draw(_loc3_);
            _loc4_.unlock();
            if(this._centerWidth)
            {
               this.x = -_loc4_.width / 2;
            }
            if(this._centerHeight)
            {
               this.y = -_loc4_.height / 2;
            }
            this.bitmapData = _loc4_;
            this.smoothing = !OptionsGlobalVariables.getInstance().highQuality ? false : true;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}

