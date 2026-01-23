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
      
      protected var spritesArray:Array;
      
      protected var actualSpriteObjects:Array;
      
      as3isolib_internal var bSpritesInvalidated:Boolean = false;
      
      public function IsoSprite(param1:Object = null)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this.spritesArray = [];
            if(!(_loc2_ && Boolean(this)))
            {
               this.actualSpriteObjects = [];
               if(!_loc2_)
               {
                  addr0048:
                  super(param1);
               }
            }
            return;
         }
         §§goto(addr0048);
      }
      
      public function get sprites() : Array
      {
         return this.spritesArray;
      }
      
      public function set sprites(param1:Array) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(this.spritesArray != param1)
            {
               if(_loc3_)
               {
                  this.spritesArray = param1;
                  if(_loc3_ || _loc3_)
                  {
                     this.as3isolib_internal::bSpritesInvalidated = true;
                  }
               }
            }
         }
      }
      
      public function get actualSprites() : Array
      {
         return this.actualSpriteObjects.slice();
      }
      
      public function invalidateSkins() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this.as3isolib_internal::bSpritesInvalidated = true;
         }
      }
      
      public function invalidateSprites() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            this.as3isolib_internal::bSpritesInvalidated = true;
         }
      }
      
      override public function get isInvalidated() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(Boolean(as3isolib_internal::bPositionInvalidated));
            if(!(_loc2_ && Boolean(this)))
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               if(!_temp_2)
               {
                  if(_loc1_ || _loc1_)
                  {
                     addr0042:
                     §§pop();
                     addr0043:
                     §§push(this.as3isolib_internal::bSpritesInvalidated);
                     if(!_loc2_)
                     {
                        return §§pop();
                     }
                  }
               }
            }
            §§goto(addr0042);
         }
         §§goto(addr0043);
      }
      
      override protected function renderLogic(param1:Boolean = true) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            if(this.as3isolib_internal::bSpritesInvalidated)
            {
               if(_loc2_)
               {
                  this.renderSprites();
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr004a:
                     this.as3isolib_internal::bSpritesInvalidated = false;
                     if(!_loc3_)
                     {
                        addr0054:
                        super.renderLogic(param1);
                     }
                  }
                  return;
               }
               §§goto(addr004a);
            }
            §§goto(addr0054);
         }
         §§goto(addr004a);
      }
      
      protected function renderSprites() : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc1_:Object = null;
         var _loc2_:Bitmap = null;
         var _loc3_:DisplayObject = null;
         if(!(_loc7_ && Boolean(_loc2_)))
         {
            this.actualSpriteObjects = [];
         }
         do
         {
            if(mainContainer.numChildren <= 0)
            {
               if(!(_loc7_ && Boolean(_loc3_)))
               {
                  break;
               }
               §§goto(addr0211);
            }
            mainContainer.removeChildAt(0);
         }
         while(!_loc7_);
         
         var _loc4_:int = 0;
         if(_loc6_ || Boolean(_loc3_))
         {
            for each(_loc1_ in this.spritesArray)
            {
               if(!(_loc7_ && Boolean(this)))
               {
                  §§push(_loc1_ is BitmapData);
                  if(!_loc7_)
                  {
                     if(§§pop())
                     {
                        if(!_loc7_)
                        {
                           addr00ac:
                           _loc2_ = new Bitmap(BitmapData(_loc1_));
                           if(!_loc7_)
                           {
                              _loc2_.cacheAsBitmap = true;
                              if(!_loc6_)
                              {
                                 continue;
                              }
                           }
                           mainContainer.addChild(_loc2_);
                           if(_loc6_)
                           {
                              this.actualSpriteObjects.push(_loc2_);
                           }
                           continue;
                        }
                        addr012e:
                        this.actualSpriteObjects.push(_loc1_);
                        if(!(_loc7_ && Boolean(this)))
                        {
                           continue;
                        }
                     }
                     else
                     {
                        §§push(_loc1_ is DisplayObject);
                        if(_loc6_ || Boolean(this))
                        {
                           addr0109:
                           if(§§pop())
                           {
                              if(!_loc7_)
                              {
                                 mainContainer.addChild(DisplayObject(_loc1_));
                                 if(!(_loc6_ || Boolean(_loc1_)))
                                 {
                                    _loc3_ = DisplayObject(IFactory(_loc1_).newInstance());
                                    addr01b7:
                                    if(_loc6_)
                                    {
                                       mainContainer.addChild(_loc3_);
                                       if(!_loc7_)
                                       {
                                          this.actualSpriteObjects.push(_loc3_);
                                       }
                                    }
                                    continue;
                                 }
                              }
                              §§goto(addr012e);
                           }
                           else
                           {
                              §§push(_loc1_ is Class);
                              if(!(_loc7_ && Boolean(this)))
                              {
                                 if(§§pop())
                                 {
                                    if(_loc6_ || Boolean(_loc3_))
                                    {
                                       addr016d:
                                       _loc3_ = DisplayObject(new _loc1_());
                                       if(_loc6_ || Boolean(_loc1_))
                                       {
                                          mainContainer.addChild(_loc3_);
                                          if(!(_loc7_ && Boolean(_loc3_)))
                                          {
                                             this.actualSpriteObjects.push(_loc3_);
                                          }
                                       }
                                       continue;
                                    }
                                 }
                                 else
                                 {
                                    addr01ad:
                                    if(!(_loc1_ is IFactory))
                                    {
                                       throw new Error("skin asset is not of the following types: BitmapData, DisplayObject, ISpriteAsset, IFactory or Class cast as DisplayOject.");
                                    }
                                    if(_loc7_)
                                    {
                                       continue;
                                    }
                                 }
                                 §§goto(addr01b7);
                              }
                              §§goto(addr01ad);
                           }
                        }
                        §§goto(addr01ad);
                     }
                     §§goto(addr016d);
                  }
                  §§goto(addr0109);
               }
               §§goto(addr00ac);
            }
         }
         addr0211:
      }
      
      override protected function createChildren() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super.createChildren();
            if(_loc2_ || Boolean(this))
            {
               addr003b:
               mainContainer = new MovieClip();
               if(!_loc1_)
               {
                  attachMainContainerEventListeners();
               }
            }
            return;
         }
         §§goto(addr003b);
      }
   }
}

