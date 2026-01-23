package as3isolib.core
{
   import as3isolib.bounds.IBounds;
   import as3isolib.bounds.PrimitiveBounds;
   import as3isolib.data.RenderData;
   import as3isolib.events.IsoEvent;
   import as3isolib.geom.IsoMath;
   import as3isolib.geom.Pt;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedClassName;
   
   use namespace as3isolib_internal;
   
   public class IsoDisplayObject extends IsoContainer implements IIsoDisplayObject
   {
      
      private var cachedRenderData:RenderData;
      
      private var _isAnimated:Boolean = false;
      
      protected var isoBoundsObject:IBounds;
      
      public var usePreciseValues:Boolean = false;
      
      as3isolib_internal var isoX:Number = 0;
      
      protected var oldX:Number;
      
      as3isolib_internal var isoY:Number = 0;
      
      protected var oldY:Number;
      
      as3isolib_internal var isoZ:Number = 0;
      
      protected var oldZ:Number;
      
      private var dist:Number;
      
      as3isolib_internal var isoWidth:Number = 0;
      
      protected var oldWidth:Number;
      
      as3isolib_internal var isoLength:Number = 0;
      
      protected var oldLength:Number;
      
      as3isolib_internal var isoHeight:Number = 0;
      
      protected var oldHeight:Number;
      
      private var bRenderAsOrphan:Boolean = false;
      
      public var autoUpdate:Boolean = false;
      
      as3isolib_internal var bInvalidateEventDispatched:Boolean = false;
      
      as3isolib_internal var bPositionInvalidated:Boolean = false;
      
      as3isolib_internal var bSizeInvalidated:Boolean = false;
      
      public function IsoDisplayObject(param1:Object = null)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            super();
            if(_loc3_)
            {
               if(param1)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     this.createObjectFromDescriptor(param1);
                  }
               }
            }
         }
      }
      
      public function getRenderData() : RenderData
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:* = false;
         var _loc3_:BitmapData = null;
         var _loc4_:RenderData = null;
         var _loc1_:Rectangle = mainContainer.getBounds(mainContainer);
         if(!(_loc5_ && Boolean(this)))
         {
            §§push(this.isInvalidated);
            if(!_loc5_)
            {
               §§push(§§pop());
               if(_loc6_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(!_temp_3)
                  {
                     if(_loc6_ || Boolean(_loc3_))
                     {
                        addr0062:
                        §§pop();
                        if(_loc6_ || _loc2_)
                        {
                           §§goto(addr0071);
                        }
                        §§goto(addr009e);
                     }
                  }
               }
               §§goto(addr0082);
            }
            §§goto(addr0062);
         }
         addr0071:
         §§push(this.cachedRenderData);
         if(!_loc5_)
         {
            §§push(!§§pop());
            if(!_loc5_)
            {
               addr0082:
               if(§§pop())
               {
                  if(_loc6_)
                  {
                     addr0097:
                     §§push(this.bRenderAsOrphan);
                     if(_loc6_)
                     {
                        §§push(§§pop());
                     }
                     _loc2_ = §§pop();
                     if(!_loc5_)
                     {
                        addr009e:
                        this.bRenderAsOrphan = true;
                        if(_loc6_ || Boolean(this))
                        {
                           addr00b1:
                           render(true);
                           if(!(_loc5_ && _loc2_))
                           {
                              _loc3_ = new BitmapData(_loc1_.width + 1,_loc1_.height + 1,true,0);
                              addr00c7:
                              if(_loc6_)
                              {
                                 _loc3_.draw(mainContainer,new Matrix(1,0,0,1,-_loc1_.left,-_loc1_.top));
                              }
                              _loc4_ = new RenderData();
                              _loc4_.x = mainContainer.x + _loc1_.left;
                              if(!_loc5_)
                              {
                                 _loc4_.y = mainContainer.y + _loc1_.top;
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    _loc4_.bitmapData = _loc3_;
                                    if(!(_loc5_ && Boolean(_loc1_)))
                                    {
                                       this.cachedRenderData = _loc4_;
                                       if(_loc6_)
                                       {
                                          addr016b:
                                          this.bRenderAsOrphan = _loc2_;
                                       }
                                    }
                                 }
                                 §§goto(addr01bb);
                              }
                              §§goto(addr016b);
                           }
                           else
                           {
                              addr01b0:
                              this.cachedRenderData.y = mainContainer.y + _loc1_.top;
                              addr01ac:
                           }
                        }
                        §§goto(addr01bb);
                     }
                     §§goto(addr00b1);
                  }
                  §§goto(addr00c7);
               }
               else
               {
                  §§push(this.cachedRenderData);
                  if(_loc6_ || Boolean(_loc3_))
                  {
                     §§goto(addr0193);
                  }
               }
               §§goto(addr01b0);
            }
            §§goto(addr0097);
         }
         addr0193:
         §§pop().x = mainContainer.x + _loc1_.left;
         if(!(_loc5_ && Boolean(_loc1_)))
         {
            §§goto(addr01ac);
         }
         addr01bb:
         return this.cachedRenderData;
      }
      
      public function get isAnimated() : Boolean
      {
         return this._isAnimated;
      }
      
      public function set isAnimated(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._isAnimated = param1;
         }
      }
      
      public function get isoBounds() : IBounds
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this.isoBoundsObject);
            if(_loc2_)
            {
               §§push(!§§pop());
               if(!_loc1_)
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  if(!_temp_2)
                  {
                     if(_loc2_ || Boolean(this))
                     {
                        addr004b:
                        §§pop();
                        if(_loc2_ || _loc1_)
                        {
                           §§goto(addr0063);
                        }
                        §§goto(addr006c);
                     }
                  }
                  addr0063:
                  §§push(this.isInvalidated);
                  if(_loc2_)
                  {
                     §§push(§§pop());
                  }
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        addr006c:
                        this.isoBoundsObject = new PrimitiveBounds(this);
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr004b);
            }
            addr007c:
            return this.isoBoundsObject;
         }
         §§goto(addr006c);
      }
      
      public function get screenBounds() : Rectangle
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Rectangle = mainContainer.getBounds(mainContainer);
         if(_loc2_)
         {
            _loc1_.x += mainContainer.x;
            if(_loc2_)
            {
               _loc1_.y += mainContainer.y;
            }
         }
         return _loc1_;
      }
      
      public function getBounds(param1:DisplayObject) : Rectangle
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:Rectangle = this.screenBounds;
         var _loc3_:Point = new Point(_loc2_.x,_loc2_.y);
         _loc3_ = IIsoContainer(parent).container.localToGlobal(_loc3_);
         _loc3_ = param1.globalToLocal(_loc3_);
         if(!_loc4_)
         {
            _loc2_.x = _loc3_.x;
            if(_loc5_ || Boolean(_loc2_))
            {
               addr007c:
               _loc2_.y = _loc3_.y;
            }
            return _loc2_;
         }
         §§goto(addr007c);
      }
      
      public function get inverseOriginX() : Number
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(IsoMath);
         §§push(§§findproperty(Pt));
         §§push(this.x);
         if(_loc1_ || _loc1_)
         {
            §§push(this.width);
            if(!_loc2_)
            {
               addr0039:
               §§push(§§pop() + §§pop());
               §§push(this.y);
               if(_loc1_)
               {
                  §§push(this.length);
                  if(!_loc2_)
                  {
                     addr004a:
                     §§push(§§pop() + §§pop());
                     §§push(this.z);
                  }
                  return §§pop().isoToScreen(new §§pop().Pt(§§pop(),§§pop(),§§pop())).x;
               }
            }
            §§goto(addr004a);
         }
         §§goto(addr0039);
      }
      
      public function get inverseOriginY() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(IsoMath);
         §§push(§§findproperty(Pt));
         §§push(this.x);
         if(_loc2_ || _loc1_)
         {
            §§push(this.width);
            if(!_loc1_)
            {
               addr003a:
               §§push(§§pop() + §§pop());
               §§push(this.y);
               if(_loc2_ || _loc2_)
               {
                  §§goto(addr0054);
               }
               §§goto(addr0065);
            }
            addr0054:
            §§push(this.length);
            if(!(_loc1_ && _loc2_))
            {
               addr0065:
               §§push(§§pop() + §§pop());
               §§push(this.z);
            }
            return §§pop().isoToScreen(new §§pop().Pt(§§pop(),§§pop(),§§pop())).y;
         }
         §§goto(addr003a);
      }
      
      public function moveTo(param1:Number, param2:Number, param3:Number) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_)
         {
            this.x = param1;
            if(!_loc4_)
            {
               this.y = param2;
               if(_loc5_)
               {
                  addr002e:
                  this.z = param3;
               }
               §§goto(addr0033);
            }
            §§goto(addr002e);
         }
         addr0033:
      }
      
      public function moveBy(param1:Number, param2:Number, param3:Number) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!(_loc5_ && Boolean(param2)))
         {
            §§push(this);
            §§push(this.x);
            if(!(_loc5_ && Boolean(param3)))
            {
               §§push(§§pop() + param1);
            }
            §§pop().x = §§pop();
            if(_loc4_ || Boolean(param2))
            {
               addr0051:
               §§push(this);
               §§push(this.y);
               if(!(_loc5_ && Boolean(param3)))
               {
                  §§push(§§pop() + param2);
               }
               §§pop().y = §§pop();
               if(!(_loc5_ && Boolean(param1)))
               {
                  §§push(this);
                  §§push(this.z);
                  if(_loc4_)
                  {
                     §§push(§§pop() + param3);
                  }
                  §§pop().z = §§pop();
               }
            }
            return;
         }
         §§goto(addr0051);
      }
      
      [Bindable("move")]
      public function get x() : Number
      {
         return this.as3isolib_internal::isoX;
      }
      
      public function set x(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            §§push(this.usePreciseValues);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(Math.round(param1));
                     if(!(_loc3_ && Boolean(this)))
                     {
                        param1 = §§pop();
                        if(!(_loc3_ && _loc2_))
                        {
                           addr006d:
                           addr0069:
                           if(this.as3isolib_internal::isoX != param1)
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 this.oldX = this.as3isolib_internal::isoX;
                                 if(_loc2_ || Boolean(this))
                                 {
                                    addr00a2:
                                    this.as3isolib_internal::isoX = param1;
                                    if(_loc2_)
                                    {
                                       §§goto(addr00ac);
                                    }
                                 }
                                 §§goto(addr00b6);
                              }
                              addr00ac:
                              this.invalidatePosition();
                              if(!_loc3_)
                              {
                                 addr00b6:
                                 addr00ba:
                                 if(this.autoUpdate)
                                 {
                                    if(_loc2_ || Boolean(this))
                                    {
                                       addr00cb:
                                       render();
                                    }
                                 }
                              }
                              §§goto(addr00d2);
                           }
                        }
                        addr00d2:
                        return;
                     }
                     §§goto(addr006d);
                  }
                  §§goto(addr00cb);
               }
               §§goto(addr0069);
            }
            §§goto(addr00ba);
         }
         §§goto(addr00a2);
      }
      
      public function get screenX() : Number
      {
         return IsoMath.isoToScreen(new Pt(this.x,this.y,this.z)).x;
      }
      
      [Bindable("move")]
      public function get y() : Number
      {
         return this.as3isolib_internal::isoY;
      }
      
      public function set y(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §§push(this.usePreciseValues);
            if(_loc2_ || Boolean(param1))
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     §§push(Math.round(param1));
                     if(_loc2_ || Boolean(this))
                     {
                        param1 = §§pop();
                        if(_loc2_ || _loc2_)
                        {
                           addr0062:
                           addr005e:
                           if(this.as3isolib_internal::isoY != param1)
                           {
                              if(_loc2_ || _loc3_)
                              {
                                 this.oldY = this.as3isolib_internal::isoY;
                                 if(_loc2_ || _loc3_)
                                 {
                                    addr0098:
                                    this.as3isolib_internal::isoY = param1;
                                    if(_loc2_)
                                    {
                                       §§goto(addr00a2);
                                    }
                                    §§goto(addr00c1);
                                 }
                                 addr00a2:
                                 this.invalidatePosition();
                                 if(!_loc3_)
                                 {
                                    addr00b0:
                                    if(this.autoUpdate)
                                    {
                                       if(_loc2_ || _loc3_)
                                       {
                                          addr00c1:
                                          render();
                                       }
                                    }
                                 }
                                 §§goto(addr00c8);
                              }
                              §§goto(addr00c1);
                           }
                        }
                        §§goto(addr00c8);
                     }
                     §§goto(addr0062);
                  }
                  §§goto(addr0098);
               }
               §§goto(addr005e);
            }
            §§goto(addr00b0);
         }
         addr00c8:
      }
      
      public function get screenY() : Number
      {
         return IsoMath.isoToScreen(new Pt(this.x,this.y,this.z)).y;
      }
      
      [Bindable("move")]
      public function get z() : Number
      {
         return this.as3isolib_internal::isoZ;
      }
      
      public function set z(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            §§push(this.usePreciseValues);
            if(_loc2_ || _loc3_)
            {
               if(!§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     §§push(Math.round(param1));
                     if(!_loc3_)
                     {
                        param1 = §§pop();
                        if(!(_loc3_ && _loc2_))
                        {
                           §§goto(addr006d);
                        }
                        §§goto(addr00b3);
                     }
                     addr006d:
                     §§goto(addr0069);
                  }
                  §§goto(addr00c5);
               }
               addr0069:
               if(this.as3isolib_internal::isoZ != param1)
               {
                  if(_loc2_ || _loc2_)
                  {
                     this.oldZ = this.as3isolib_internal::isoZ;
                     if(!(_loc3_ && _loc2_))
                     {
                        this.as3isolib_internal::isoZ = param1;
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr00b3:
                           this.invalidatePosition();
                           if(_loc2_ || _loc3_)
                           {
                              addr00c5:
                              addr00c9:
                              if(this.autoUpdate)
                              {
                                 if(_loc2_ || Boolean(param1))
                                 {
                                    addr00da:
                                    render();
                                 }
                              }
                              §§goto(addr00e1);
                           }
                           §§goto(addr00da);
                        }
                        §§goto(addr00e1);
                     }
                  }
                  §§goto(addr00da);
               }
               addr00e1:
               return;
            }
            §§goto(addr00c9);
         }
         §§goto(addr00da);
      }
      
      public function get distance() : Number
      {
         return this.dist;
      }
      
      public function set distance(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this.dist = param1;
         }
      }
      
      public function setSize(param1:Number, param2:Number, param3:Number) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_ || Boolean(param3))
         {
            this.width = param1;
            if(!_loc4_)
            {
               this.length = param2;
               if(_loc5_)
               {
                  addr0044:
                  this.height = param3;
               }
               §§goto(addr0048);
            }
            §§goto(addr0044);
         }
         addr0048:
      }
      
      [Bindable("resize")]
      public function get width() : Number
      {
         return this.as3isolib_internal::isoWidth;
      }
      
      public function set width(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            §§push(this.usePreciseValues);
            if(_loc2_ || _loc2_)
            {
               if(!§§pop())
               {
                  if(!_loc3_)
                  {
                     §§push(Math.round(param1));
                     if(!_loc3_)
                     {
                        param1 = §§pop();
                        if(_loc2_ || Boolean(this))
                        {
                           addr0054:
                           §§push(Math.abs(param1));
                           if(_loc2_ || _loc2_)
                           {
                              addr0073:
                              param1 = §§pop();
                              if(!_loc3_)
                              {
                                 §§goto(addr007d);
                              }
                              §§goto(addr00bb);
                           }
                           addr007d:
                           if(this.as3isolib_internal::isoWidth != param1)
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 this.oldWidth = this.as3isolib_internal::isoWidth;
                                 if(!_loc3_)
                                 {
                                    this.as3isolib_internal::isoWidth = param1;
                                    if(_loc2_ || Boolean(this))
                                    {
                                       §§goto(addr00bb);
                                    }
                                    §§goto(addr00cd);
                                 }
                                 addr00bb:
                                 this.invalidateSize();
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr00cd:
                                    addr00d1:
                                    if(this.autoUpdate)
                                    {
                                       if(!(_loc3_ && Boolean(this)))
                                       {
                                          render();
                                       }
                                    }
                                 }
                                 §§goto(addr00e9);
                              }
                           }
                           §§goto(addr00e9);
                        }
                        addr00e9:
                        return;
                     }
                     §§goto(addr0073);
                  }
               }
               §§goto(addr0054);
            }
            §§goto(addr00d1);
         }
         §§goto(addr0054);
      }
      
      [Bindable("resize")]
      public function get length() : Number
      {
         return this.as3isolib_internal::isoLength;
      }
      
      public function set length(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §§push(this.usePreciseValues);
            if(_loc3_ || _loc3_)
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(Math.round(param1));
                     if(_loc3_ || _loc3_)
                     {
                        param1 = §§pop();
                        if(_loc3_ || Boolean(param1))
                        {
                           addr006a:
                           §§push(Math.abs(param1));
                           if(!_loc2_)
                           {
                              param1 = §§pop();
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 §§goto(addr0089);
                              }
                              §§goto(addr00dd);
                           }
                           §§goto(addr0089);
                        }
                        §§goto(addr00dd);
                     }
                     addr0089:
                     if(this.as3isolib_internal::isoLength != param1)
                     {
                        if(_loc3_)
                        {
                           this.oldLength = this.as3isolib_internal::isoLength;
                           if(!(_loc2_ && _loc2_))
                           {
                              addr00b4:
                              this.as3isolib_internal::isoLength = param1;
                              if(!_loc2_)
                              {
                                 §§goto(addr00be);
                              }
                              §§goto(addr00d0);
                           }
                           addr00be:
                           this.invalidateSize();
                           if(_loc3_ || Boolean(param1))
                           {
                              addr00d0:
                              addr00d4:
                              if(this.autoUpdate)
                              {
                                 if(_loc3_)
                                 {
                                    addr00dd:
                                    render();
                                 }
                              }
                           }
                           §§goto(addr00e4);
                        }
                        §§goto(addr00b4);
                     }
                     addr00e4:
                     return;
                  }
                  §§goto(addr00be);
               }
               §§goto(addr006a);
            }
            §§goto(addr00d4);
         }
         §§goto(addr00dd);
      }
      
      [Bindable("resize")]
      public function get height() : Number
      {
         return this.as3isolib_internal::isoHeight;
      }
      
      public function set height(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            §§push(this.usePreciseValues);
            if(_loc3_)
            {
               if(!§§pop())
               {
                  if(_loc3_)
                  {
                     §§push(Math.round(param1));
                     if(!(_loc2_ && _loc2_))
                     {
                        param1 = §§pop();
                        if(_loc3_)
                        {
                           addr004c:
                           §§push(Math.abs(param1));
                           if(!_loc2_)
                           {
                              param1 = §§pop();
                              if(_loc3_ || Boolean(param1))
                              {
                                 addr0078:
                                 if(this.as3isolib_internal::isoHeight != param1)
                                 {
                                    if(!_loc2_)
                                    {
                                       this.oldHeight = this.as3isolib_internal::isoHeight;
                                       if(!_loc2_)
                                       {
                                          addr008f:
                                          this.as3isolib_internal::isoHeight = param1;
                                          if(!_loc2_)
                                          {
                                             this.invalidateSize();
                                             if(_loc3_ || _loc2_)
                                             {
                                                addr00b7:
                                                addr00bb:
                                                if(this.autoUpdate)
                                                {
                                                   if(_loc3_ || Boolean(param1))
                                                   {
                                                      addr00cc:
                                                      render();
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr00d3);
                                       }
                                       §§goto(addr00cc);
                                    }
                                    §§goto(addr00b7);
                                 }
                              }
                              addr00d3:
                              return;
                           }
                           §§goto(addr0078);
                        }
                        §§goto(addr008f);
                     }
                     §§goto(addr0078);
                  }
                  §§goto(addr00cc);
               }
               §§goto(addr004c);
            }
            §§goto(addr00bb);
         }
         §§goto(addr00cc);
      }
      
      public function get renderAsOrphan() : Boolean
      {
         return this.bRenderAsOrphan;
      }
      
      public function set renderAsOrphan(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.bRenderAsOrphan = param1;
         }
      }
      
      override protected function renderLogic(param1:Boolean = true) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §§push(!hasParent);
            if(_loc3_ || param1)
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(_temp_3)
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§pop();
                     if(_loc3_)
                     {
                        §§push(this.renderAsOrphan);
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr0053:
                           §§push(!§§pop());
                           if(!_loc2_)
                           {
                              addr0059:
                              if(§§pop())
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    return;
                                 }
                              }
                              else
                              {
                                 §§push(this.as3isolib_internal::bPositionInvalidated);
                                 if(!_loc2_)
                                 {
                                    addr008e:
                                    if(§§pop())
                                    {
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          this.validatePosition();
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             addr00b2:
                                             this.as3isolib_internal::bPositionInvalidated = false;
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                addr00c4:
                                                addr00c8:
                                                if(this.as3isolib_internal::bSizeInvalidated)
                                                {
                                                   if(_loc3_ || Boolean(this))
                                                   {
                                                      this.validateSize();
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         §§goto(addr00f6);
                                                      }
                                                      §§goto(addr0112);
                                                   }
                                                   §§goto(addr00f6);
                                                }
                                                §§goto(addr0100);
                                             }
                                          }
                                          addr00f6:
                                          this.as3isolib_internal::bSizeInvalidated = false;
                                          if(!_loc2_)
                                          {
                                             addr0100:
                                             this.as3isolib_internal::bInvalidateEventDispatched = false;
                                             if(_loc3_ || Boolean(this))
                                             {
                                                addr0112:
                                                super.renderLogic(param1);
                                             }
                                          }
                                          §§goto(addr0118);
                                       }
                                       §§goto(addr00b2);
                                    }
                                    §§goto(addr00c4);
                                 }
                                 §§goto(addr00c8);
                              }
                              §§goto(addr0100);
                           }
                           §§goto(addr00c8);
                        }
                        §§goto(addr008e);
                     }
                     addr0118:
                     return;
                  }
                  §§goto(addr0053);
               }
            }
            §§goto(addr0059);
         }
         §§goto(addr00b2);
      }
      
      protected function validatePosition() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:Pt = new Pt(this.x,this.y,this.z);
         if(!_loc4_)
         {
            IsoMath.isoToScreen(_loc1_);
            if(_loc3_ || Boolean(this))
            {
               mainContainer.x = _loc1_.x;
               if(!_loc4_)
               {
                  mainContainer.y = _loc1_.y;
                  addr0050:
               }
               addr0065:
               var _loc2_:IsoEvent = new IsoEvent(IsoEvent.MOVE,true);
               if(!_loc4_)
               {
                  _loc2_.propName = "position";
                  if(_loc3_)
                  {
                     _loc2_.oldValue = {
                        "x":this.oldX,
                        "y":this.oldY,
                        "z":this.oldZ
                     };
                     addr0089:
                     if(!_loc4_)
                     {
                        _loc2_.newValue = {
                           "x":this.as3isolib_internal::isoX,
                           "y":this.as3isolib_internal::isoY,
                           "z":this.as3isolib_internal::isoZ
                        };
                        if(!_loc4_)
                        {
                           addr00d7:
                           dispatchEvent(_loc2_);
                        }
                        return;
                     }
                  }
                  §§goto(addr00d7);
               }
               §§goto(addr0089);
            }
            §§goto(addr0050);
         }
         §§goto(addr0065);
      }
      
      protected function validateSize() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:IsoEvent = new IsoEvent(IsoEvent.RESIZE,true);
         if(_loc3_ || _loc2_)
         {
            _loc1_.propName = "size";
            if(_loc3_)
            {
               _loc1_.oldValue = {
                  "width":this.oldWidth,
                  "length":this.oldLength,
                  "height":this.oldHeight
               };
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.newValue = {
                     "width":this.as3isolib_internal::isoWidth,
                     "length":this.as3isolib_internal::isoLength,
                     "height":this.as3isolib_internal::isoHeight
                  };
                  if(!_loc2_)
                  {
                     addr009b:
                     dispatchEvent(_loc1_);
                  }
               }
            }
            return;
         }
         §§goto(addr009b);
      }
      
      public function invalidatePosition() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this.as3isolib_internal::bPositionInvalidated = true;
            if(_loc2_ || Boolean(this))
            {
               §§goto(addr0032);
            }
            §§goto(addr0056);
         }
         addr0032:
         if(!this.as3isolib_internal::bInvalidateEventDispatched)
         {
            if(_loc2_)
            {
               dispatchEvent(new IsoEvent(IsoEvent.INVALIDATE));
               if(_loc2_)
               {
                  addr0056:
                  this.as3isolib_internal::bInvalidateEventDispatched = true;
               }
            }
         }
      }
      
      public function invalidateSize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this.as3isolib_internal::bSizeInvalidated = true;
            if(!_loc1_)
            {
               if(!this.as3isolib_internal::bInvalidateEventDispatched)
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     dispatchEvent(new IsoEvent(IsoEvent.INVALIDATE));
                     if(_loc2_)
                     {
                        addr0056:
                        this.as3isolib_internal::bInvalidateEventDispatched = true;
                     }
                  }
               }
               §§goto(addr005b);
            }
            §§goto(addr0056);
         }
         addr005b:
      }
      
      override public function get isInvalidated() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this.as3isolib_internal::bPositionInvalidated);
            if(!_loc1_)
            {
               §§push(§§pop());
               if(_loc2_)
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  if(!_temp_2)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        §§pop();
                        §§goto(addr004c);
                     }
                     §§goto(addr004b);
                  }
               }
            }
            addr004c:
            §§goto(addr0042);
         }
         addr0042:
         §§push(this.as3isolib_internal::bSizeInvalidated);
         if(!_loc1_)
         {
            addr004b:
            return §§pop();
         }
      }
      
      override protected function createChildren() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.createChildren();
            if(!(_loc2_ && _loc1_))
            {
               mainContainer.cacheAsBitmap = this._isAnimated;
            }
         }
      }
      
      public function clone() : *
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:Class = getDefinitionByName(getQualifiedClassName(this)) as Class;
         var _loc2_:IIsoDisplayObject = new _loc1_();
         if(!(_loc4_ && _loc3_))
         {
            _loc2_.setSize(this.as3isolib_internal::isoWidth,this.as3isolib_internal::isoLength,this.as3isolib_internal::isoHeight);
         }
         return _loc2_;
      }
      
      private function createObjectFromDescriptor(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:String = null;
         for(_loc2_ in param1)
         {
            if(!_loc5_)
            {
               if(!this.hasOwnProperty(_loc2_))
               {
                  continue;
               }
               if(_loc5_ && Boolean(_loc2_))
               {
                  continue;
               }
            }
            this[_loc2_] = param1[_loc2_];
         }
      }
   }
}

