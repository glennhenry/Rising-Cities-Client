package as3isolib.display
{
   import as3isolib.core.IIsoDisplayObject;
   import as3isolib.display.renderers.IViewRenderer;
   import as3isolib.display.scene.IIsoScene;
   import as3isolib.events.IsoEvent;
   import as3isolib.geom.IsoMath;
   import as3isolib.geom.Pt;
   import flash.display.DisplayObject;
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import mx.core.IFactory;
   
   public class IsoView extends Sprite implements IIsoView
   {
      
      public var usePreciseValues:Boolean = false;
      
      protected var targetScreenPt:Pt;
      
      protected var currentScreenPt:Pt;
      
      private var bPositionInvalidated:Boolean = false;
      
      public var autoUpdate:Boolean = false;
      
      private var viewRendererFactories:Array;
      
      protected var scenesArray:Array;
      
      private var _w:Number;
      
      private var _h:Number;
      
      private var _clipContent:Boolean = true;
      
      protected var romTarget:DisplayObject;
      
      protected var romBoundsRect:Rectangle;
      
      public var limitRangeOfMotion:Boolean = true;
      
      private var zoomContainer:Sprite;
      
      protected var mContainer:Sprite;
      
      private var bgContainer:Sprite;
      
      private var fgContainer:Sprite;
      
      private var sceneContainer:Sprite;
      
      private var maskShape:Shape;
      
      private var borderShape:Shape;
      
      private var _showBorder:Boolean = true;
      
      public function IsoView()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            this.targetScreenPt = new Pt();
            if(!(_loc2_ && _loc2_))
            {
               this.currentScreenPt = new Pt();
               if(!(_loc2_ && _loc1_))
               {
                  addr004d:
                  this.viewRendererFactories = [];
                  if(!(_loc2_ && Boolean(this)))
                  {
                     this.scenesArray = [];
                     if(!(_loc2_ && Boolean(this)))
                     {
                        super();
                        if(_loc1_)
                        {
                           addr007b:
                           this.sceneContainer = new Sprite();
                           if(!(_loc2_ && _loc1_))
                           {
                              this.mContainer = new Sprite();
                              if(_loc1_)
                              {
                                 this.mContainer.addChild(this.sceneContainer);
                                 if(!_loc2_)
                                 {
                                    addr00ba:
                                    this.zoomContainer = new Sprite();
                                    if(_loc1_ || _loc2_)
                                    {
                                       addr00d0:
                                       this.zoomContainer.addChild(this.mContainer);
                                       if(_loc1_)
                                       {
                                          addr00e1:
                                          addChild(this.zoomContainer);
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             addr00f9:
                                             this.maskShape = new Shape();
                                             if(_loc1_)
                                             {
                                                addChild(this.maskShape);
                                                if(!_loc2_)
                                                {
                                                   §§goto(addr0125);
                                                }
                                             }
                                             §§goto(addr0135);
                                          }
                                          §§goto(addr014d);
                                       }
                                    }
                                    §§goto(addr0125);
                                 }
                                 §§goto(addr00f9);
                              }
                              addr0125:
                              this.borderShape = new Shape();
                              if(_loc1_)
                              {
                                 addr0135:
                                 addChild(this.borderShape);
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    addr014d:
                                    this.setSize(400,250);
                                 }
                              }
                              §§goto(addr0158);
                           }
                           §§goto(addr00e1);
                        }
                        §§goto(addr00ba);
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr00f9);
               }
               §§goto(addr00d0);
            }
            addr0158:
            return;
         }
         §§goto(addr004d);
      }
      
      [Bindable("as3isolib_move")]
      public function get currentPt() : Pt
      {
         return this.currentScreenPt.clone() as Pt;
      }
      
      public function get currentX() : Number
      {
         return this.currentScreenPt.x;
      }
      
      public function set currentX(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(this.currentScreenPt.x != param1)
            {
               if(_loc2_)
               {
                  §§push(this.targetScreenPt);
                  if(_loc2_ || _loc3_)
                  {
                     if(!§§pop())
                     {
                        if(_loc2_)
                        {
                           this.targetScreenPt = this.currentScreenPt.clone() as Pt;
                           addr0041:
                           if(_loc2_)
                           {
                              addr0063:
                              §§push(this.targetScreenPt);
                              if(!_loc3_)
                              {
                                 if(this.usePreciseValues)
                                 {
                                    addr0074:
                                    §§push(param1);
                                    if(!_loc3_)
                                    {
                                       §§push(§§pop());
                                       if(_loc2_)
                                       {
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(Math.round(param1));
                                 }
                                 §§pop().x = §§pop();
                                 if(!_loc3_)
                                 {
                                    this.bPositionInvalidated = true;
                                    if(_loc2_)
                                    {
                                       if(this.autoUpdate)
                                       {
                                          if(!(_loc3_ && Boolean(param1)))
                                          {
                                             addr00c1:
                                             this.render();
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr00c6);
                              }
                              §§goto(addr0074);
                           }
                           §§goto(addr00c1);
                        }
                        §§goto(addr00c6);
                     }
                     §§goto(addr0063);
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0041);
            }
            addr00c6:
            return;
         }
         §§goto(addr00c1);
      }
      
      public function get currentY() : Number
      {
         return this.currentScreenPt.y;
      }
      
      public function set currentY(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(this.currentScreenPt.y != param1)
            {
               if(_loc3_)
               {
                  addr0026:
                  §§push(this.targetScreenPt);
                  if(!(_loc2_ && _loc3_))
                  {
                     if(!§§pop())
                     {
                        if(!_loc2_)
                        {
                           this.targetScreenPt = this.currentScreenPt.clone() as Pt;
                           if(!_loc2_)
                           {
                              addr0061:
                              §§push(this.targetScreenPt);
                              if(_loc3_)
                              {
                                 if(this.usePreciseValues)
                                 {
                                    addr0072:
                                    §§push(param1);
                                    if(!(_loc2_ && Boolean(param1)))
                                    {
                                       §§push(§§pop());
                                       if(_loc2_)
                                       {
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(Math.round(param1));
                                 }
                                 §§pop().y = §§pop();
                                 if(!_loc2_)
                                 {
                                    this.bPositionInvalidated = true;
                                    if(_loc3_)
                                    {
                                       if(this.autoUpdate)
                                       {
                                          if(_loc3_)
                                          {
                                             addr00bc:
                                             this.render();
                                          }
                                       }
                                    }
                                    §§goto(addr00c1);
                                 }
                                 §§goto(addr00bc);
                              }
                              §§goto(addr0072);
                           }
                           §§goto(addr00c1);
                        }
                     }
                     §§goto(addr0061);
                  }
                  §§goto(addr0072);
               }
               §§goto(addr00bc);
            }
            addr00c1:
            return;
         }
         §§goto(addr0026);
      }
      
      public function localToIso(param1:Point) : Pt
      {
         param1 = localToGlobal(param1);
         param1 = this.mainContainer.globalToLocal(param1);
         return IsoMath.screenToIso(new Pt(param1.x,param1.y,0));
      }
      
      public function isoToLocal(param1:Pt) : Point
      {
         param1 = IsoMath.isoToScreen(param1);
         var _loc2_:Point = new Point(param1.x,param1.y);
         _loc2_ = this.mainContainer.localToGlobal(_loc2_);
         return globalToLocal(_loc2_);
      }
      
      public function get isInvalidated() : Boolean
      {
         return this.bPositionInvalidated;
      }
      
      public function invalidatePosition() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            this.bPositionInvalidated = true;
         }
      }
      
      public function getInvalidatedScenes() : Array
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:IIsoScene = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.scenesArray)
         {
            if(_loc5_)
            {
               if(_loc2_.isInvalidated)
               {
                  if(_loc5_)
                  {
                     _loc1_.push(_loc2_);
                  }
               }
            }
         }
         return _loc1_;
      }
      
      public function render(param1:Boolean = false) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this.preRenderLogic();
            if(!(_loc3_ && Boolean(this)))
            {
               addr0040:
               this.renderLogic(param1);
               if(!_loc3_)
               {
                  this.postRenderLogic();
               }
            }
            return;
         }
         §§goto(addr0040);
      }
      
      protected function preRenderLogic() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            dispatchEvent(new IsoEvent(IsoEvent.RENDER));
         }
      }
      
      protected function renderLogic(param1:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc2_:IIsoScene = null;
         var _loc3_:IViewRenderer = null;
         var _loc4_:IFactory = null;
         if(_loc8_)
         {
            §§push(this.bPositionInvalidated);
            if(!(_loc7_ && Boolean(this)))
            {
               if(§§pop())
               {
                  if(!_loc7_)
                  {
                     addr0048:
                     this.validatePosition();
                     if(_loc8_ || param1)
                     {
                        addr005c:
                        this.bPositionInvalidated = false;
                        if(_loc8_ || Boolean(_loc2_))
                        {
                           §§goto(addr006f);
                        }
                     }
                     §§goto(addr0074);
                  }
                  §§goto(addr005c);
               }
               addr006f:
               §§goto(addr0070);
            }
            addr0070:
            if(param1)
            {
               addr0074:
               var _loc5_:int = 0;
               var _loc6_:* = this.scenesArray;
               while(true)
               {
                  §§push(§§hasnext(_loc6_,_loc5_));
                  if(_loc7_ && Boolean(_loc3_))
                  {
                     break;
                  }
                  if(§§pop())
                  {
                     _loc2_ = §§nextvalue(_loc5_,_loc6_);
                     if(!(_loc7_ && Boolean(_loc3_)))
                     {
                        _loc2_.render(param1);
                     }
                     continue;
                  }
                  if(_loc8_)
                  {
                     if(!(_loc7_ && Boolean(_loc3_)))
                     {
                        if(!_loc7_)
                        {
                           §§goto(addr00e0);
                        }
                        §§goto(addr0130);
                     }
                     §§goto(addr013a);
                  }
                  §§goto(addr0182);
               }
               while(§§pop())
               {
                  _loc4_ = §§nextvalue(_loc5_,_loc6_);
                  _loc3_ = _loc4_.newInstance();
                  if(_loc8_ || Boolean(_loc2_))
                  {
                     _loc3_.renderView(this);
                  }
                  §§goto(addr017b);
               }
               §§goto(addr0182);
            }
            addr00e0:
            §§push(Boolean(this.viewRenderers));
            if(!(_loc7_ && param1))
            {
               var _temp_8:* = §§pop();
               §§push(_temp_8);
               if(_temp_8)
               {
                  if(!(_loc7_ && Boolean(this)))
                  {
                     §§pop();
                     if(!(_loc7_ && Boolean(_loc2_)))
                     {
                        §§goto(addr011e);
                     }
                     §§goto(addr0130);
                  }
               }
            }
            addr011e:
            if(this.numScenes > 0)
            {
               if(_loc8_ || Boolean(_loc3_))
               {
                  addr0130:
                  _loc5_ = 0;
                  if(_loc8_)
                  {
                     addr013a:
                     _loc6_ = this.viewRendererFactories;
                     while(true)
                     {
                        §§push(§§hasnext(_loc6_,_loc5_));
                        break loop0;
                     }
                     addr0182:
                     addr017b:
                  }
               }
            }
            return;
         }
         §§goto(addr0048);
      }
      
      protected function postRenderLogic() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            dispatchEvent(new IsoEvent(IsoEvent.RENDER_COMPLETE));
         }
      }
      
      protected function validatePosition() : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:Rectangle = null;
         var _loc7_:* = false;
         §§push(this.currentScreenPt.x - this.targetScreenPt.x);
         if(_loc8_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(this.currentScreenPt.y - this.targetScreenPt.y);
         if(_loc8_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc8_)
         {
            §§push(this.limitRangeOfMotion);
            if(_loc8_)
            {
               §§push(§§pop());
               if(_loc8_ || _loc2_)
               {
                  addr006d:
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  if(_temp_2)
                  {
                     if(_loc8_ || _loc1_)
                     {
                        §§pop();
                        if(_loc8_ || _loc3_)
                        {
                           addr0094:
                           if(Boolean(this.romTarget))
                           {
                              if(_loc8_)
                              {
                                 §§push(0);
                                 if(_loc8_ || _loc3_)
                                 {
                                    §§push(§§pop());
                                    if(_loc8_)
                                    {
                                       _loc4_ = §§pop();
                                       if(_loc8_ || _loc2_)
                                       {
                                          addr00c8:
                                          _loc5_ = 0;
                                          addr00c7:
                                          addr00c5:
                                          if(!(_loc9_ && _loc2_))
                                          {
                                             addr00d8:
                                             _loc6_ = this.romTarget.getBounds(this);
                                             if(!(_loc9_ && _loc1_))
                                             {
                                                §§push(!this.romBoundsRect.containsRect(_loc6_));
                                                if(_loc8_)
                                                {
                                                   _loc7_ = §§pop();
                                                   §§push(_loc7_);
                                                }
                                                if(§§pop())
                                                {
                                                   if(_loc8_ || _loc1_)
                                                   {
                                                      §§push(_loc1_);
                                                      if(_loc8_)
                                                      {
                                                         §§push(0);
                                                         if(_loc8_ || _loc1_)
                                                         {
                                                            if(§§pop() > §§pop())
                                                            {
                                                               if(!_loc9_)
                                                               {
                                                                  §§push(Math.min(_loc1_,Math.abs(_loc6_.left)));
                                                                  if(!_loc9_)
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                     if(!(_loc9_ && _loc2_))
                                                                     {
                                                                        addr01c8:
                                                                        §§push(_loc2_);
                                                                        if(_loc8_)
                                                                        {
                                                                           addr01d1:
                                                                           if(§§pop() > 0)
                                                                           {
                                                                              if(!(_loc9_ && Boolean(this)))
                                                                              {
                                                                                 §§push(Math.min(_loc2_,Math.abs(_loc6_.top)));
                                                                                 if(_loc8_ || _loc2_)
                                                                                 {
                                                                                    _loc5_ = §§pop();
                                                                                    if(_loc8_ || Boolean(this))
                                                                                    {
                                                                                       addr0257:
                                                                                       §§push(this.targetScreenPt);
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          §§push(this.targetScreenPt);
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             §§push(§§pop().x + _loc1_ - _loc4_);
                                                                                             if(_loc8_ || _loc3_)
                                                                                             {
                                                                                                §§pop().x = §§pop();
                                                                                                if(!(_loc9_ && _loc1_))
                                                                                                {
                                                                                                   addr029f:
                                                                                                   this.targetScreenPt.y = this.targetScreenPt.y + _loc2_ - _loc5_;
                                                                                                   addr0298:
                                                                                                   addr0294:
                                                                                                   addr0290:
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      addr02a7:
                                                                                                      §§push(_loc4_);
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         addr02af:
                                                                                                         §§push(§§pop());
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            addr02b6:
                                                                                                            _loc1_ = §§pop();
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               addr02c6:
                                                                                                               addr02bd:
                                                                                                               §§push(_loc5_);
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  addr02c5:
                                                                                                                  §§push(§§pop());
                                                                                                               }
                                                                                                               _loc2_ = §§pop();
                                                                                                            }
                                                                                                            addr02c7:
                                                                                                            this.mContainer.x += _loc1_;
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               addr02db:
                                                                                                               this.mContainer.y += _loc2_;
                                                                                                            }
                                                                                                            addr02e9:
                                                                                                            var _loc3_:IsoEvent = new IsoEvent(IsoEvent.MOVE);
                                                                                                            if(_loc8_ || Boolean(_loc3_))
                                                                                                            {
                                                                                                               _loc3_.propName = "currentPt";
                                                                                                               if(_loc8_ || Boolean(_loc3_))
                                                                                                               {
                                                                                                                  _loc3_.oldValue = this.currentScreenPt;
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     this.currentScreenPt = this.targetScreenPt.clone() as Pt;
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        addr034d:
                                                                                                                        _loc3_.newValue = this.currentScreenPt;
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           dispatchEvent(_loc3_);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr0361);
                                                                                                                  }
                                                                                                                  §§goto(addr034d);
                                                                                                               }
                                                                                                               addr0361:
                                                                                                               return;
                                                                                                            }
                                                                                                            §§goto(addr034d);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr02c6);
                                                                                                   }
                                                                                                   §§goto(addr02bd);
                                                                                                }
                                                                                                §§goto(addr02c7);
                                                                                             }
                                                                                             §§goto(addr029f);
                                                                                          }
                                                                                          §§goto(addr0298);
                                                                                       }
                                                                                       §§goto(addr0294);
                                                                                    }
                                                                                    §§goto(addr0290);
                                                                                 }
                                                                                 §§goto(addr02b6);
                                                                              }
                                                                              §§goto(addr0257);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr0219:
                                                                              §§push(-1 * Math.min(Math.abs(_loc2_),Math.abs(_loc6_.bottom - this.romBoundsRect.bottom)));
                                                                              if(!_loc9_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    _loc5_ = §§pop();
                                                                                    if(_loc8_ || _loc1_)
                                                                                    {
                                                                                       §§goto(addr0257);
                                                                                    }
                                                                                    §§goto(addr02bd);
                                                                                 }
                                                                                 §§goto(addr02c6);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr02c5);
                                                                     }
                                                                     §§goto(addr0290);
                                                                  }
                                                                  §§goto(addr02af);
                                                               }
                                                               §§goto(addr02bd);
                                                            }
                                                            else
                                                            {
                                                               §§push(-1);
                                                               if(_loc8_ || _loc1_)
                                                               {
                                                                  §§push(§§pop() * Math.min(Math.abs(_loc1_),Math.abs(_loc6_.right - this.romBoundsRect.right)));
                                                                  if(!(_loc9_ && _loc1_))
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc8_)
                                                                     {
                                                                        _loc4_ = §§pop();
                                                                        if(_loc8_ || _loc1_)
                                                                        {
                                                                           §§goto(addr01c8);
                                                                        }
                                                                        §§goto(addr02a7);
                                                                     }
                                                                     §§goto(addr02b6);
                                                                  }
                                                                  §§goto(addr02c5);
                                                               }
                                                            }
                                                            §§goto(addr0219);
                                                         }
                                                         §§goto(addr01d1);
                                                      }
                                                      §§goto(addr02c5);
                                                   }
                                                }
                                                §§goto(addr0257);
                                             }
                                             §§goto(addr02c7);
                                          }
                                          §§goto(addr02e9);
                                       }
                                       §§goto(addr00d8);
                                    }
                                    §§goto(addr00c8);
                                 }
                                 §§goto(addr00c7);
                              }
                              §§goto(addr00c5);
                           }
                           §§goto(addr02c7);
                        }
                        §§goto(addr02db);
                     }
                  }
               }
               §§goto(addr0094);
            }
            §§goto(addr006d);
         }
         §§goto(addr02e9);
      }
      
      public function centerOnPt(param1:Pt, param2:Boolean = true) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:Pt = Pt(param1.clone());
         if(!_loc4_)
         {
            §§push(param2);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     IsoMath.isoToScreen(_loc3_);
                     if(_loc5_)
                     {
                        addr0049:
                        addr004d:
                        if(!this.usePreciseValues)
                        {
                           if(!(_loc4_ && Boolean(_loc3_)))
                           {
                              _loc3_.x = Math.round(_loc3_.x);
                              if(_loc5_)
                              {
                                 _loc3_.y = Math.round(_loc3_.y);
                                 if(_loc5_)
                                 {
                                    _loc3_.z = Math.round(_loc3_.z);
                                    if(!_loc4_)
                                    {
                                       addr00b1:
                                       this.targetScreenPt = _loc3_;
                                       if(!(_loc4_ && Boolean(_loc3_)))
                                       {
                                          §§goto(addr00c4);
                                       }
                                    }
                                    §§goto(addr00d7);
                                 }
                                 §§goto(addr00c4);
                              }
                              §§goto(addr00b1);
                           }
                           addr00c4:
                           this.bPositionInvalidated = true;
                           if(!(_loc4_ && Boolean(param1)))
                           {
                              addr00d7:
                              this.render();
                           }
                           §§goto(addr00dc);
                        }
                        §§goto(addr00b1);
                     }
                     addr00dc:
                     return;
                  }
                  §§goto(addr00b1);
               }
               §§goto(addr0049);
            }
            §§goto(addr004d);
         }
         §§goto(addr00c4);
      }
      
      public function centerOnIso(param1:IIsoDisplayObject) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.centerOnPt(param1.isoBounds.centerPt);
         }
      }
      
      public function pan(param1:Number, param2:Number) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(param1)))
         {
            this.panBy(param1,param2);
         }
      }
      
      public function panBy(param1:Number, param2:Number) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(param2))
         {
            this.targetScreenPt = this.currentScreenPt.clone() as Pt;
            if(_loc4_ || Boolean(param2))
            {
               §§push(this.targetScreenPt);
               if(_loc4_ || Boolean(this))
               {
                  §§push(this.targetScreenPt);
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     §§pop().x = §§pop().x + param1;
                     if(!_loc3_)
                     {
                        §§goto(addr008d);
                     }
                     §§goto(addr00ac);
                  }
                  addr008d:
                  this.targetScreenPt.y += param2;
                  §§goto(addr0089);
               }
               addr0089:
               if(_loc4_)
               {
                  addr0099:
                  this.bPositionInvalidated = true;
                  if(_loc4_ || Boolean(param2))
                  {
                     addr00ac:
                     this.render();
                  }
               }
               return;
            }
         }
         §§goto(addr0099);
      }
      
      public function panTo(param1:Number, param2:Number) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            this.targetScreenPt = new Pt(param1,param2);
            if(!_loc4_)
            {
               this.bPositionInvalidated = true;
               if(_loc3_)
               {
                  this.render();
               }
            }
         }
      }
      
      public function get currentZoom() : Number
      {
         return this.zoomContainer.scaleX;
      }
      
      public function set currentZoom(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && _loc3_))
         {
            this.zoomContainer.scaleX = this.zoomContainer.scaleY = param1;
         }
      }
      
      public function zoom(param1:Number) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            this.zoomContainer.scaleX = this.zoomContainer.scaleY = param1;
         }
      }
      
      public function reset() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            var _temp_1:* = this.zoomContainer;
            var _loc1_:int;
            this.zoomContainer.scaleY = _loc1_ = 1;
            _temp_1.scaleX = _loc1_;
            if(_loc2_ || Boolean(_loc1_))
            {
               this.setSize(this._w,this._h);
               if(_loc2_ || _loc3_)
               {
                  addr006c:
                  this.mContainer.x = 0;
                  if(_loc2_)
                  {
                     §§goto(addr0079);
                  }
               }
               §§goto(addr0086);
            }
            addr0079:
            this.mContainer.y = 0;
            if(_loc2_)
            {
               addr0086:
               this.currentScreenPt = new Pt();
            }
            return;
         }
         §§goto(addr006c);
      }
      
      public function get viewRenderers() : Array
      {
         return this.viewRendererFactories;
      }
      
      public function set viewRenderers(param1:Array) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:Array = null;
         var _loc3_:Object = null;
         if(_loc7_ || Boolean(_loc3_))
         {
            if(param1)
            {
               addr0031:
               _loc2_ = [];
               for each(_loc3_ in param1)
               {
                  if(!_loc6_)
                  {
                     if(_loc3_ is IFactory)
                     {
                        if(_loc7_ || Boolean(_loc3_))
                        {
                           _loc2_.push(_loc3_);
                        }
                     }
                  }
               }
               if(!(_loc6_ && Boolean(_loc3_)))
               {
                  this.viewRendererFactories = _loc2_;
                  if(!_loc6_)
                  {
                     this.bPositionInvalidated = true;
                     if(!_loc6_)
                     {
                        §§goto(addr00b8);
                     }
                     §§goto(addr00ce);
                  }
                  addr00b8:
                  if(this.autoUpdate)
                  {
                     if(!(_loc6_ && Boolean(this)))
                     {
                        addr00ce:
                        this.render();
                     }
                  }
                  §§goto(addr00dd);
               }
               §§goto(addr00ce);
            }
            else
            {
               this.viewRendererFactories = [];
            }
            addr00dd:
            return;
         }
         §§goto(addr0031);
      }
      
      public function get scenes() : Array
      {
         return this.scenesArray;
      }
      
      public function get numScenes() : uint
      {
         return this.scenesArray.length;
      }
      
      public function addScene(param1:IIsoScene) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.addSceneAt(param1,this.scenesArray.length);
         }
      }
      
      public function addSceneAt(param1:IIsoScene, param2:int) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(this)))
         {
            if(!this.containsScene(param1))
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0049:
                  this.scenesArray.splice(param2,0,param1);
                  if(!_loc3_)
                  {
                     param1.hostContainer = null;
                     if(_loc4_)
                     {
                        addr0072:
                        this.sceneContainer.addChildAt(param1.container,param2);
                        if(_loc3_ && Boolean(param1))
                        {
                        }
                     }
                     §§goto(addr009c);
                  }
                  §§goto(addr0072);
               }
               addr009c:
               return;
            }
            throw new Error("IsoView instance already contains parameter scene");
         }
         §§goto(addr0049);
      }
      
      public function containsScene(param1:IIsoScene) : Boolean
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:IIsoScene = null;
         for each(_loc2_ in this.scenesArray)
         {
            if(!_loc5_)
            {
               if(param1 == _loc2_)
               {
                  if(!_loc5_)
                  {
                     return true;
                  }
               }
            }
         }
         return false;
      }
      
      public function getSceneByID(param1:String) : IIsoScene
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:IIsoScene = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.scenesArray;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc5_)
               {
                  break;
               }
               if(_loc2_.id == param1)
               {
                  if(!(_loc5_ && Boolean(_loc3_)))
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      public function removeScene(param1:IIsoScene) : IIsoScene
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:int = 0;
         if(!_loc4_)
         {
            if(this.containsScene(param1))
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  §§push(this.scenesArray);
                  if(!_loc4_)
                  {
                     _loc2_ = int(§§pop().indexOf(param1));
                     if(!_loc4_)
                     {
                        this.scenesArray.splice(_loc2_,1);
                        addr005f:
                        if(!(_loc4_ && Boolean(this)))
                        {
                           this.sceneContainer.removeChild(param1.container);
                           if(!(_loc4_ && Boolean(this)))
                           {
                              return param1;
                           }
                        }
                     }
                     §§goto(addr009d);
                  }
                  §§goto(addr005f);
               }
            }
         }
         addr009d:
         return null;
      }
      
      public function removeAllScenes() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:IIsoScene = null;
         var _loc3_:* = this.scenesArray;
         for each(_loc1_ in _loc3_)
         {
            if(!(_loc4_ && Boolean(_loc1_)))
            {
               if(!this.sceneContainer.contains(_loc1_.container))
               {
                  continue;
               }
               if(!_loc5_)
               {
                  continue;
               }
            }
            this.sceneContainer.removeChild(_loc1_.container);
            if(!(_loc4_ && _loc3_))
            {
               _loc1_.hostContainer = null;
            }
         }
         if(_loc5_)
         {
            this.scenesArray = [];
         }
      }
      
      override public function get width() : Number
      {
         return this._w;
      }
      
      override public function get height() : Number
      {
         return this._h;
      }
      
      public function get size() : Point
      {
         return new Point(this._w,this._h);
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(this)))
         {
            this._w = Math.round(param1);
            if(!(_loc3_ && Boolean(param2)))
            {
               this._h = Math.round(param2);
               if(_loc4_ || Boolean(param2))
               {
                  this.romBoundsRect = new Rectangle(0,0,this._w + 1,this._h + 1);
                  if(_loc4_)
                  {
                     §§push(this);
                     if(_loc4_)
                     {
                        §§pop().scrollRect = this._clipContent ? this.romBoundsRect : null;
                        if(_loc4_ || Boolean(param2))
                        {
                           §§goto(addr00bc);
                        }
                        §§goto(addr00e0);
                     }
                     §§goto(addr008e);
                  }
                  §§goto(addr00bc);
               }
               §§goto(addr00e0);
            }
            §§goto(addr00ce);
         }
         addr00bc:
         this.zoomContainer.x = this._w / 2;
         if(!_loc3_)
         {
            addr00ce:
            this.zoomContainer.y = this._h / 2;
            if(!_loc3_)
            {
               addr00e0:
               this.drawBorder();
            }
         }
      }
      
      public function get clipContent() : Boolean
      {
         return this._clipContent;
      }
      
      public function set clipContent(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(this._clipContent != param1)
            {
               if(_loc2_ || Boolean(this))
               {
                  this._clipContent = param1;
                  if(_loc2_)
                  {
                     addr0042:
                     this.reset();
                  }
               }
            }
            return;
         }
         §§goto(addr0042);
      }
      
      public function get rangeOfMotionTarget() : DisplayObject
      {
         return this.romTarget;
      }
      
      public function set rangeOfMotionTarget(param1:DisplayObject) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.romTarget = param1;
            if(_loc3_ || _loc2_)
            {
               §§push(this);
               if(_loc3_ || _loc2_)
               {
                  if(this.romTarget)
                  {
                     addr004b:
                     §§push(true);
                     if(_loc2_)
                     {
                     }
                  }
                  else
                  {
                     §§push(false);
                  }
                  §§pop().limitRangeOfMotion = §§pop();
                  §§goto(addr0059);
               }
               §§goto(addr004b);
            }
         }
         addr0059:
      }
      
      public function get mainContainer() : Sprite
      {
         return this.mContainer;
      }
      
      public function get backgroundContainer() : Sprite
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            if(!this.bgContainer)
            {
               if(_loc2_)
               {
                  addr0035:
                  this.bgContainer = new Sprite();
                  if(_loc2_ || _loc2_)
                  {
                     addr004b:
                     this.mContainer.addChildAt(this.bgContainer,0);
                  }
                  §§goto(addr0059);
               }
               §§goto(addr004b);
            }
            addr0059:
            return this.bgContainer;
         }
         §§goto(addr0035);
      }
      
      public function get foregroundContainer() : Sprite
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            if(!this.fgContainer)
            {
               if(_loc2_)
               {
                  addr002d:
                  this.fgContainer = new Sprite();
                  if(_loc2_)
                  {
                     addr003b:
                     this.mContainer.addChild(this.fgContainer);
                  }
                  §§goto(addr0047);
               }
               §§goto(addr003b);
            }
            addr0047:
            return this.fgContainer;
         }
         §§goto(addr002d);
      }
      
      [Bindable("showBorderChanged")]
      public function get showBorder() : Boolean
      {
         return this._showBorder;
      }
      
      public function set showBorder(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && param1))
         {
            if(this._showBorder != param1)
            {
               if(_loc2_)
               {
                  this._showBorder = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     this.drawBorder();
                  }
               }
            }
         }
      }
      
      protected function drawBorder() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Graphics = this.borderShape.graphics;
         if(!_loc3_)
         {
            _loc1_.clear();
            if(!_loc3_)
            {
               if(this.showBorder)
               {
                  if(_loc2_)
                  {
                     addr0049:
                     _loc1_.lineStyle(0);
                     if(!_loc3_)
                     {
                        addr0055:
                        _loc1_.drawRect(0,0,this._w,this._h);
                     }
                  }
               }
               return;
            }
            §§goto(addr0055);
         }
         §§goto(addr0049);
      }
   }
}

