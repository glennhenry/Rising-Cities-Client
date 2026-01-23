package as3isolib.display
{
   import as3isolib.core.IsoDisplayObject;
   import as3isolib.core.as3isolib_internal;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import mx.core.IFactory;
   
   use namespace as3isolib_internal;
   
   public class IsoSprite extends IsoDisplayObject
   {
      
      protected var spritesArray:Array = [];
      
      protected var actualSpriteObjects:Array = [];
      
      as3isolib_internal var bSpritesInvalidated:Boolean = false;
      
      public function IsoSprite(param1:Object = null)
      {
         super(param1);
      }
      
      public function get sprites() : Array
      {
         return this.spritesArray;
      }
      
      public function set sprites(param1:Array) : void
      {
         if(this.spritesArray != param1)
         {
            this.spritesArray = param1;
            this.as3isolib_internal::bSpritesInvalidated = true;
         }
      }
      
      public function get actualSprites() : Array
      {
         return this.actualSpriteObjects.slice();
      }
      
      public function invalidateSkins() : void
      {
         this.as3isolib_internal::bSpritesInvalidated = true;
      }
      
      public function invalidateSprites() : void
      {
         this.as3isolib_internal::bSpritesInvalidated = true;
      }
      
      override public function get isInvalidated() : Boolean
      {
         return Boolean(as3isolib_internal::bPositionInvalidated) || this.as3isolib_internal::bSpritesInvalidated;
      }
      
      override protected function renderLogic(param1:Boolean = true) : void
      {
         if(this.as3isolib_internal::bSpritesInvalidated)
         {
            this.renderSprites();
            this.as3isolib_internal::bSpritesInvalidated = false;
         }
         super.renderLogic(param1);
      }
      
      protected function renderSprites() : void
      {
         var _loc1_:Object = null;
         this.actualSpriteObjects = [];
         while(mainContainer.numChildren > 0)
         {
            mainContainer.removeChildAt(0);
         }
         for each(_loc1_ in this.spritesArray)
         {
            if(_loc1_ is BitmapData)
            {
               var _loc2_:Bitmap = new Bitmap(BitmapData(_loc1_));
               null.cacheAsBitmap = true;
               mainContainer.addChild(null);
               this.actualSpriteObjects.push(null);
            }
            else if(_loc1_ is DisplayObject)
            {
               mainContainer.addChild(DisplayObject(_loc1_));
               this.actualSpriteObjects.push(_loc1_);
            }
            else if(_loc1_ is Class)
            {
               var _loc3_:DisplayObject = DisplayObject(new _loc1_());
               mainContainer.addChild(null);
               this.actualSpriteObjects.push(null);
            }
            else
            {
               if(!(_loc1_ is IFactory))
               {
                  throw new Error("skin asset is not of the following types: BitmapData, DisplayObject, ISpriteAsset, IFactory or Class cast as DisplayOject.");
               }
               _loc3_ = DisplayObject(IFactory(_loc1_).newInstance());
               mainContainer.addChild(null);
               this.actualSpriteObjects.push(null);
            }
         }
      }
      
      override protected function createChildren() : void
      {
         super.createChildren();
         mainContainer = new MovieClip();
         attachMainContainerEventListeners();
      }
   }
}

