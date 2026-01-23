package as3isolib.display.primitive
{
   import as3isolib.core.IsoDisplayObject;
   import as3isolib.core.as3isolib_internal;
   import as3isolib.events.IsoEvent;
   import as3isolib.graphics.IFill;
   import as3isolib.graphics.IStroke;
   import as3isolib.graphics.SolidColorFill;
   import as3isolib.graphics.Stroke;
   
   use namespace as3isolib_internal;
   
   public class IsoPrimitive extends IsoDisplayObject implements IIsoPrimitive
   {
      
      public static const DEFAULT_WIDTH:Number = 25;
      
      public static const DEFAULT_HEIGHT:Number = 25;
      
      protected static const DEFAULT_FILL:IFill;
      
      protected static const DEFAULT_STROKE:IStroke;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc1_)
      {
         DEFAULT_WIDTH = 25;
         if(!(_loc1_ && _loc2_))
         {
            §§goto(addr003d);
         }
         §§goto(addr0052);
      }
      addr003d:
      
      public static const DEFAULT_LENGTH:Number = 25;
      
      if(!(_loc1_ && IsoPrimitive))
      {
         DEFAULT_HEIGHT = 25;
         addr0052:
         if(!_loc1_)
         {
            DEFAULT_FILL = new SolidColorFill(16777215,1);
            if(!(_loc1_ && _loc2_))
            {
               addr0087:
               DEFAULT_STROKE = new Stroke(0,0);
            }
            §§goto(addr0097);
         }
         §§goto(addr0087);
      }
      addr0097:
      
      private var renderStyle:String = "solid";
      
      private var pStroke:IStroke;
      
      private var fillsArray:Vector.<IFill>;
      
      private var edgesArray:Vector.<IStroke>;
      
      as3isolib_internal var bSytlesInvalidated:Boolean = false;
      
      public function IsoPrimitive(param1:Object = null)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this.fillsArray = new Vector.<IFill>();
            if(_loc3_)
            {
               this.edgesArray = new Vector.<IStroke>();
               if(!(_loc2_ && Boolean(param1)))
               {
                  super(param1);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     if(!param1)
                     {
                        if(!_loc2_)
                        {
                           addr0080:
                           width = DEFAULT_WIDTH;
                           if(_loc3_)
                           {
                              length = DEFAULT_LENGTH;
                              if(_loc3_)
                              {
                                 addr0098:
                                 height = DEFAULT_HEIGHT;
                              }
                           }
                        }
                     }
                     §§goto(addr009f);
                  }
                  §§goto(addr0080);
               }
            }
            addr009f:
            return;
         }
         §§goto(addr0098);
      }
      
      public function get styleType() : String
      {
         return this.renderStyle;
      }
      
      public function set styleType(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(this.renderStyle != param1)
            {
               if(!(_loc2_ && _loc2_))
               {
                  this.renderStyle = param1;
                  if(_loc3_)
                  {
                     this.invalidateStyles();
                     if(!(_loc2_ && _loc3_))
                     {
                        §§goto(addr005f);
                     }
                     §§goto(addr006b);
                  }
                  addr005f:
                  if(autoUpdate)
                  {
                     if(!_loc2_)
                     {
                        addr006b:
                        render();
                     }
                  }
                  §§goto(addr0072);
               }
               §§goto(addr006b);
            }
            addr0072:
            return;
         }
         §§goto(addr006b);
      }
      
      public function get profileStroke() : IStroke
      {
         return this.pStroke;
      }
      
      public function set profileStroke(param1:IStroke) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(this.pStroke != param1)
            {
               if(_loc2_)
               {
                  this.pStroke = param1;
                  if(!(_loc3_ && _loc2_))
                  {
                     this.invalidateStyles();
                     if(_loc2_)
                     {
                        addr004c:
                        if(autoUpdate)
                        {
                           if(_loc2_ || Boolean(param1))
                           {
                              addr0060:
                              render();
                           }
                        }
                        §§goto(addr0067);
                     }
                     §§goto(addr0060);
                  }
               }
            }
            addr0067:
            return;
         }
         §§goto(addr004c);
      }
      
      public function get fill() : IFill
      {
         return IFill(this.fills[0]);
      }
      
      public function set fill(param1:IFill) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.fills = [param1,param1,param1,param1,param1,param1];
         }
      }
      
      public function get fills() : Array
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:IFill = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.fillsArray)
         {
            if(!(_loc6_ && Boolean(_loc2_)))
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public function set fills(param1:Array) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(param1)
            {
               if(_loc2_ || Boolean(this))
               {
                  this.fillsArray = Vector.<IFill>(param1);
                  if(_loc2_)
                  {
                     §§goto(addr0078);
                  }
                  §§goto(addr008a);
               }
               §§goto(addr0078);
            }
            else
            {
               this.fillsArray = new Vector.<IFill>();
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0078:
                  this.invalidateStyles();
                  if(_loc2_ || Boolean(this))
                  {
                     addr008a:
                     if(autoUpdate)
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr009e:
                           render();
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr009e);
      }
      
      public function get stroke() : IStroke
      {
         return IStroke(this.strokes[0]);
      }
      
      public function set stroke(param1:IStroke) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this.strokes = [param1,param1,param1,param1,param1,param1];
         }
      }
      
      public function get strokes() : Array
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:IStroke = null;
         var _loc1_:Array = [];
         var _loc3_:int = 0;
         for each(_loc2_ in this.edgesArray)
         {
            if(_loc6_ || Boolean(_loc3_))
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public function set strokes(param1:Array) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(param1)
            {
               if(!(_loc3_ && _loc2_))
               {
                  this.edgesArray = Vector.<IStroke>(param1);
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr0076);
                  }
                  §§goto(addr0088);
               }
               §§goto(addr0076);
            }
            else
            {
               this.edgesArray = new Vector.<IStroke>();
               if(_loc2_)
               {
                  §§goto(addr0076);
               }
            }
            §§goto(addr0094);
         }
         addr0076:
         this.invalidateStyles();
         if(!(_loc3_ && Boolean(this)))
         {
            addr0088:
            if(autoUpdate)
            {
               if(!_loc3_)
               {
                  addr0094:
                  render();
               }
            }
         }
      }
      
      override protected function renderLogic(param1:Boolean = true) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §§push(!hasParent);
            if(!_loc2_)
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               §§push(_temp_2);
               if(!(_loc2_ && _loc2_))
               {
                  if(§§pop())
                  {
                     if(_loc3_ || param1)
                     {
                        §§pop();
                        if(_loc3_)
                        {
                           §§push(!renderAsOrphan);
                           if(!(_loc2_ && _loc3_))
                           {
                              addr0059:
                              if(§§pop())
                              {
                                 if(_loc3_)
                                 {
                                    §§goto(addr0062);
                                 }
                                 else
                                 {
                                    addr008e:
                                    §§push(this.as3isolib_internal::bSytlesInvalidated);
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       §§push(§§pop());
                                       if(!(_loc2_ && param1))
                                       {
                                          addr00ad:
                                          if(§§pop())
                                          {
                                             if(_loc3_)
                                             {
                                                addr00bc:
                                                if(!this.validateGeometry())
                                                {
                                                   if(_loc3_)
                                                   {
                                                      §§goto(addr00c5);
                                                   }
                                                }
                                                addr00de:
                                                this.drawGeometry();
                                                if(!_loc2_)
                                                {
                                                   validateSize();
                                                   if(!_loc2_)
                                                   {
                                                      as3isolib_internal::bSizeInvalidated = false;
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         this.as3isolib_internal::bSytlesInvalidated = false;
                                                         if(!_loc2_)
                                                         {
                                                            addr011f:
                                                            super.renderLogic(param1);
                                                         }
                                                         §§goto(addr0125);
                                                      }
                                                      §§goto(addr011f);
                                                   }
                                                   addr0125:
                                                   return;
                                                }
                                                §§goto(addr011f);
                                             }
                                             addr00c5:
                                             throw new Error("validation of geometry failed.");
                                          }
                                          §§goto(addr011f);
                                       }
                                    }
                                    §§goto(addr00bc);
                                 }
                              }
                              else
                              {
                                 §§push(Boolean(as3isolib_internal::bSizeInvalidated));
                                 if(_loc3_)
                                 {
                                    var _temp_9:* = §§pop();
                                    addr0072:
                                    §§push(_temp_9);
                                    if(!_temp_9)
                                    {
                                       if(!_loc2_)
                                       {
                                          addr0088:
                                          §§pop();
                                          if(!_loc2_)
                                          {
                                             §§goto(addr008e);
                                          }
                                          §§goto(addr00de);
                                       }
                                       §§goto(addr00bc);
                                    }
                                    §§goto(addr00ad);
                                 }
                                 §§goto(addr0088);
                              }
                              §§goto(addr00de);
                           }
                           §§goto(addr00bc);
                        }
                        §§goto(addr008e);
                     }
                  }
                  §§goto(addr0059);
               }
               §§goto(addr0072);
            }
            §§goto(addr0088);
         }
         addr0062:
      }
      
      protected function validateGeometry() : Boolean
      {
         return true;
      }
      
      protected function drawGeometry() : void
      {
      }
      
      public function invalidateStyles() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            this.as3isolib_internal::bSytlesInvalidated = true;
            if(_loc2_ || _loc1_)
            {
               addr0044:
               if(!as3isolib_internal::bInvalidateEventDispatched)
               {
                  if(_loc2_)
                  {
                     dispatchEvent(new IsoEvent(IsoEvent.INVALIDATE));
                     if(_loc2_ || _loc1_)
                     {
                        addr006f:
                        as3isolib_internal::bInvalidateEventDispatched = true;
                     }
                     §§goto(addr0076);
                  }
                  §§goto(addr006f);
               }
            }
            addr0076:
            return;
         }
         §§goto(addr0044);
      }
      
      override public function get isInvalidated() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(Boolean(as3isolib_internal::bSizeInvalidated));
            if(_loc1_)
            {
               var _temp_1:* = §§pop();
               §§push(_temp_1);
               §§push(_temp_1);
               if(!_loc2_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr003f:
                        §§pop();
                        if(_loc1_ || Boolean(this))
                        {
                           §§push(Boolean(as3isolib_internal::bPositionInvalidated));
                           if(!(_loc2_ && _loc2_))
                           {
                              §§goto(addr0068);
                           }
                           §§goto(addr007c);
                        }
                        §§goto(addr0073);
                     }
                  }
                  addr0068:
                  var _temp_5:* = §§pop();
                  §§goto(addr0069);
               }
               addr0069:
               §§push(_temp_5);
               if(!_temp_5)
               {
                  if(_loc1_)
                  {
                     §§pop();
                     addr0073:
                     §§push(this.as3isolib_internal::bSytlesInvalidated);
                     if(_loc1_)
                     {
                        addr007c:
                        return §§pop();
                     }
                  }
               }
            }
            §§goto(addr003f);
         }
         §§goto(addr0073);
      }
      
      override public function clone() : *
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:IIsoPrimitive = super.clone() as IIsoPrimitive;
         if(!_loc2_)
         {
            _loc1_.fills = this.fills;
            if(!_loc2_)
            {
               _loc1_.strokes = this.strokes;
               if(!_loc2_)
               {
                  addr004d:
                  _loc1_.styleType = this.styleType;
               }
               §§goto(addr0056);
            }
            §§goto(addr004d);
         }
         addr0056:
         return _loc1_;
      }
   }
}

