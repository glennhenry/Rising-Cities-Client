package as3isolib.graphics
{
   import as3isolib.enum.IsoOrientation;
   import as3isolib.utils.IsoDrawingUtil;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Graphics;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedSuperclassName;
   
   public class BitmapFill implements IBitmapFill
   {
      
      private var bitmapData:BitmapData;
      
      private var sourceObject:Object;
      
      private var _orientation:Object;
      
      private var _orientationMatrix:Matrix;
      
      private var cTransform:ColorTransform;
      
      private var matrixObject:Matrix;
      
      private var bRepeat:Boolean;
      
      public var smooth:Boolean;
      
      public function BitmapFill(param1:Object, param2:Object = null, param3:Matrix = null, param4:ColorTransform = null, param5:Boolean = true, param6:Boolean = false)
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         if(_loc8_)
         {
            super();
            if(_loc8_ || Boolean(param3))
            {
               this.source = param1;
               if(_loc8_ || Boolean(param2))
               {
                  this.orientation = param2;
                  if(_loc8_ || Boolean(param1))
                  {
                     if(param3)
                     {
                        if(_loc8_)
                        {
                           this.matrix = param3;
                           if(_loc8_ || Boolean(param1))
                           {
                              addr008c:
                              this.colorTransform = param4;
                              if(!_loc7_)
                              {
                                 §§goto(addr0098);
                              }
                              §§goto(addr00a4);
                           }
                           addr0098:
                           this.repeat = param5;
                           if(!_loc7_)
                           {
                              addr00a4:
                              this.smooth = param6;
                           }
                        }
                        §§goto(addr00aa);
                     }
                  }
                  §§goto(addr008c);
               }
               §§goto(addr00a4);
            }
         }
         addr00aa:
      }
      
      public function get source() : Object
      {
         return this.sourceObject;
      }
      
      public function set source(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:DisplayObject = null;
         var _loc3_:Class = null;
         if(!(_loc4_ && Boolean(this)))
         {
            this.sourceObject = param1;
            if(_loc5_)
            {
               if(this.bitmapData)
               {
                  if(_loc5_ || Boolean(param1))
                  {
                     this.bitmapData.dispose();
                     if(_loc5_)
                     {
                        this.bitmapData = null;
                        if(_loc5_ || Boolean(_loc2_))
                        {
                           addr006e:
                           §§push(param1 is BitmapData);
                           if(_loc5_ || Boolean(_loc3_))
                           {
                              if(§§pop())
                              {
                                 if(!_loc4_)
                                 {
                                    this.bitmapData = BitmapData(param1);
                                    if(_loc4_ && Boolean(_loc3_))
                                    {
                                       addr00b4:
                                       §§push(param1 is Class);
                                       if(_loc5_ || Boolean(_loc2_))
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc4_ && Boolean(this)))
                                             {
                                                _loc3_ = Class(param1);
                                                if(_loc5_)
                                                {
                                                   if(getQualifiedSuperclassName(_loc3_) == "flash.display::BitmapData")
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         this.bitmapData = new _loc3_(1,1);
                                                         if(!_loc4_)
                                                         {
                                                            §§goto(addr0113);
                                                         }
                                                      }
                                                   }
                                                   _loc2_ = new _loc3_();
                                                   if(!(_loc4_ && Boolean(param1)))
                                                   {
                                                      §§goto(addr01cb);
                                                   }
                                                   §§goto(addr028b);
                                                }
                                                addr0113:
                                                return;
                                             }
                                             addr014d:
                                             this.bitmapData = Bitmap(param1).bitmapData;
                                             if(!_loc5_)
                                             {
                                                addr0182:
                                                _loc2_ = DisplayObject(param1);
                                             }
                                          }
                                          else
                                          {
                                             §§push(param1 is Bitmap);
                                             if(!_loc4_)
                                             {
                                                addr0143:
                                                if(§§pop())
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      §§goto(addr014d);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(param1 is DisplayObject);
                                                   if(_loc5_)
                                                   {
                                                      addr0170:
                                                      if(§§pop())
                                                      {
                                                         if(_loc5_ || Boolean(_loc3_))
                                                         {
                                                            §§goto(addr0182);
                                                         }
                                                         else
                                                         {
                                                            addr019d:
                                                            _loc3_ = Class(getDefinitionByName(String(param1)));
                                                            if(!_loc4_)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  addr01c0:
                                                                  _loc2_ = new _loc3_();
                                                               }
                                                               §§goto(addr01cb);
                                                            }
                                                            §§goto(addr01c0);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr0193:
                                                         if(!(param1 is String))
                                                         {
                                                            return;
                                                         }
                                                         if(!_loc4_)
                                                         {
                                                            §§goto(addr019d);
                                                         }
                                                      }
                                                      §§goto(addr01cb);
                                                   }
                                                   §§goto(addr0193);
                                                }
                                                §§goto(addr01cb);
                                             }
                                             §§goto(addr0170);
                                          }
                                          §§goto(addr01cb);
                                       }
                                       §§goto(addr0143);
                                    }
                                 }
                                 §§goto(addr00a5);
                              }
                              §§goto(addr00b4);
                           }
                           §§goto(addr0143);
                        }
                        §§goto(addr014d);
                     }
                     §§goto(addr00b4);
                  }
                  addr01cb:
                  §§push(!this.bitmapData);
                  if(_loc5_)
                  {
                     var _temp_10:* = §§pop();
                     §§push(_temp_10);
                     §§push(_temp_10);
                     if(_loc5_ || Boolean(this))
                     {
                        if(§§pop())
                        {
                           if(!_loc4_)
                           {
                              §§pop();
                              if(_loc5_)
                              {
                                 §§push(Boolean(_loc2_));
                                 if(_loc5_)
                                 {
                                    addr01fe:
                                    if(§§pop())
                                    {
                                       if(!(_loc4_ && Boolean(_loc3_)))
                                       {
                                          addr0210:
                                          §§push(_loc2_.width > 0);
                                          if(_loc5_)
                                          {
                                             var _temp_13:* = §§pop();
                                             addr021d:
                                             §§push(_temp_13);
                                             if(_temp_13)
                                             {
                                                if(!(_loc4_ && Boolean(_loc2_)))
                                                {
                                                   §§goto(addr022f);
                                                }
                                             }
                                             §§goto(addr023c);
                                          }
                                          §§goto(addr022f);
                                       }
                                       §§goto(addr0246);
                                    }
                                    §§goto(addr028b);
                                 }
                                 §§goto(addr022f);
                              }
                              §§goto(addr0210);
                           }
                           §§goto(addr022f);
                        }
                        §§goto(addr01fe);
                     }
                     §§goto(addr021d);
                  }
                  addr022f:
                  §§pop();
                  if(_loc5_)
                  {
                     addr023c:
                     if(_loc2_.height > 0)
                     {
                        if(!_loc4_)
                        {
                           addr0246:
                           this.bitmapData = new BitmapData(_loc2_.width,_loc2_.height);
                           if(!(_loc4_ && Boolean(param1)))
                           {
                              this.bitmapData.draw(_loc2_,new Matrix(),this.cTransform);
                              if(!_loc4_)
                              {
                                 §§goto(addr028b);
                              }
                              §§goto(addr02a1);
                           }
                           §§goto(addr028b);
                        }
                        §§goto(addr02a1);
                     }
                     addr028b:
                     if(this.cTransform)
                     {
                        if(_loc5_ || Boolean(param1))
                        {
                           addr02a1:
                           this.bitmapData.colorTransform(this.bitmapData.rect,this.cTransform);
                        }
                     }
                     §§goto(addr02b4);
                  }
                  addr02b4:
                  return;
               }
               §§goto(addr006e);
            }
            addr00a5:
            return;
         }
         §§goto(addr00b4);
      }
      
      public function get orientation() : Object
      {
         return this._orientation;
      }
      
      public function set orientation(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._orientation = param1;
            if(_loc2_)
            {
               if(!param1)
               {
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     return;
                  }
               }
               else
               {
                  §§push(param1 is String);
                  if(!_loc3_)
                  {
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           addr005c:
                           §§push(param1 == IsoOrientation.XY);
                           if(_loc2_)
                           {
                              var _temp_3:* = §§pop();
                              §§push(_temp_3);
                              §§push(_temp_3);
                              if(_loc2_ || Boolean(this))
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc2_)
                                    {
                                       §§pop();
                                       if(_loc2_)
                                       {
                                          addr0091:
                                          §§push(param1 == IsoOrientation.XZ);
                                          if(!(_loc3_ && Boolean(param1)))
                                          {
                                             addr00a6:
                                             var _temp_6:* = §§pop();
                                             addr00a7:
                                             §§push(_temp_6);
                                             if(!_temp_6)
                                             {
                                                if(_loc2_)
                                                {
                                                   addr00b0:
                                                   §§pop();
                                                   if(!_loc3_)
                                                   {
                                                      §§push(param1 == IsoOrientation.YZ);
                                                      if(!_loc3_)
                                                      {
                                                         addr00c3:
                                                         if(§§pop())
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               this._orientationMatrix = IsoDrawingUtil.getIsoMatrix(param1 as String);
                                                               if(_loc3_ && Boolean(param1))
                                                               {
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            this._orientationMatrix = null;
                                                            if(_loc3_)
                                                            {
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr010c:
                                                         if(!§§pop())
                                                         {
                                                            throw new Error("value is not of type String or Matrix");
                                                         }
                                                         if(!_loc3_)
                                                         {
                                                            addr0115:
                                                            this._orientationMatrix = Matrix(param1);
                                                            if(_loc2_ || _loc3_)
                                                            {
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr013e);
                                                   }
                                                   §§goto(addr0115);
                                                }
                                                §§goto(addr010c);
                                             }
                                             §§goto(addr00c3);
                                          }
                                          §§goto(addr010c);
                                       }
                                       §§goto(addr0115);
                                    }
                                    §§goto(addr00c3);
                                 }
                                 §§goto(addr00a6);
                              }
                              §§goto(addr00a7);
                           }
                           §§goto(addr00a6);
                        }
                        §§goto(addr0091);
                     }
                     else
                     {
                        §§push(param1 is Matrix);
                     }
                     §§goto(addr010c);
                  }
                  §§goto(addr00b0);
               }
            }
            addr013e:
            return;
         }
         §§goto(addr005c);
      }
      
      public function get colorTransform() : ColorTransform
      {
         return this.cTransform;
      }
      
      public function set colorTransform(param1:ColorTransform) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this.cTransform = param1;
            if(_loc3_ || Boolean(param1))
            {
               §§goto(addr003e);
            }
            §§goto(addr0083);
         }
         addr003e:
         §§push(Boolean(this.bitmapData));
         if(!(_loc2_ && Boolean(this)))
         {
            var _temp_5:* = §§pop();
            §§push(_temp_5);
            if(_temp_5)
            {
               if(!_loc2_)
               {
                  §§pop();
                  if(_loc3_ || Boolean(param1))
                  {
                     §§goto(addr007a);
                  }
                  §§goto(addr0083);
               }
            }
         }
         addr007a:
         if(Boolean(this.cTransform))
         {
            if(!_loc2_)
            {
               addr0083:
               this.bitmapData.colorTransform(this.bitmapData.rect,this.cTransform);
            }
         }
      }
      
      public function get matrix() : Matrix
      {
         return this.matrixObject;
      }
      
      public function set matrix(param1:Matrix) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this.matrixObject = param1;
         }
      }
      
      public function get repeat() : Boolean
      {
         return this.bRepeat;
      }
      
      public function set repeat(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.bRepeat = param1;
         }
      }
      
      public function begin(param1:Graphics) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Matrix = new Matrix();
         if(!_loc4_)
         {
            if(this._orientationMatrix)
            {
               if(_loc3_)
               {
                  _loc2_.concat(this._orientationMatrix);
                  if(_loc3_ || _loc3_)
                  {
                     addr0052:
                     if(this.matrix)
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr0076:
                           _loc2_.concat(this.matrix);
                           if(_loc3_)
                           {
                              addr0084:
                              param1.beginBitmapFill(this.bitmapData,_loc2_,this.repeat,this.smooth);
                           }
                        }
                        return;
                     }
                     §§goto(addr0084);
                  }
               }
               §§goto(addr0076);
            }
            §§goto(addr0052);
         }
         §§goto(addr0076);
      }
      
      public function end(param1:Graphics) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            param1.endFill();
         }
      }
      
      public function clone() : IFill
      {
         return new BitmapFill(this.source,this.orientation,this.matrix,this.colorTransform,this.repeat,this.smooth);
      }
   }
}

