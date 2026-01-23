package net.bigpoint.itemRenderer
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import net.bigpoint.itemRenderer.interfaces.IClip;
   
   public class RendererList extends Bitmap
   {
      
      private var clipList:Array = new Array();
      
      private var isRendering:Boolean = false;
      
      private var rectangle:Rectangle;
      
      public function RendererList(param1:int, param2:int, param3:Boolean = true)
      {
         super();
         bitmapData = new BitmapData(param1,param2,param3,0);
         this.rectangle = bitmapData.rect;
      }
      
      public function render() : void
      {
         var _loc1_:IClip = null;
         if(this.hasClipsChanged())
         {
            bitmapData.lock();
            bitmapData.fillRect(this.rectangle,0);
            for each(_loc1_ in this.clipList)
            {
               _loc1_.renderClip(bitmapData);
            }
            bitmapData.unlock();
         }
      }
      
      public function resize(param1:int, param2:int) : Boolean
      {
         var _loc3_:BitmapData = null;
         if(this.bitmapData.width != param1 || this.bitmapData.height != param2)
         {
            _loc3_ = new BitmapData(param1,param2,this.bitmapData.transparent,0);
            this.bitmapData = _loc3_;
            this.rectangle = bitmapData.rect;
            return true;
         }
         return false;
      }
      
      public function addClip(param1:IClip) : IClip
      {
         if(this.clipList.indexOf(param1) == -1)
         {
            this.clipList.push(param1);
         }
         return param1;
      }
      
      public function hasClip(param1:IClip) : Boolean
      {
         return this.clipList.indexOf(param1) != -1;
      }
      
      public function removeClip(param1:IClip) : Boolean
      {
         var _loc2_:int = int(this.clipList.indexOf(param1));
         if(_loc2_ == -1)
         {
            return false;
         }
         this.clipList.splice(_loc2_,1);
         return true;
      }
      
      public function removeAllClips() : void
      {
         var _loc1_:IClip = null;
         for each(_loc1_ in this.clipList)
         {
            this.removeClip(_loc1_);
         }
      }
      
      private function hasClipsChanged() : Boolean
      {
         var _loc1_:IClip = null;
         for each(_loc1_ in this.clipList)
         {
            if(_loc1_.hasChanged || _loc1_.forceNewRender)
            {
               return true;
            }
         }
         return false;
      }
      
      public function startRendering() : void
      {
         if(!this.isRendering)
         {
            addEventListener(Event.ENTER_FRAME,this.onEnter);
         }
         this.isRendering = true;
      }
      
      public function stopRendering() : void
      {
         removeEventListener(Event.ENTER_FRAME,this.onEnter);
         this.isRendering = false;
      }
      
      private function onEnter(param1:Event) : void
      {
         this.render();
      }
   }
}

