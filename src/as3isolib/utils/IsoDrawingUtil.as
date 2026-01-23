package as3isolib.utils
{
   import as3isolib.core.IIsoDisplayObject;
   import as3isolib.enum.IsoOrientation;
   import as3isolib.geom.IsoMath;
   import as3isolib.geom.Pt;
   import flash.display.BitmapData;
   import flash.display.Graphics;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   
   public class IsoDrawingUtil
   {
      
      public function IsoDrawingUtil()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function drawIsoRectangle(param1:Graphics, param2:Pt, param3:Number, param4:Number, param5:String = "xy") : void
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc7_:Pt = null;
         var _loc8_:Pt = null;
         var _loc9_:Pt = null;
         var _loc6_:Pt = IsoMath.isoToScreen(param2,true);
         var _loc10_:* = param5;
         if(_loc11_)
         {
            §§push(IsoOrientation.XZ);
            if(!(_loc12_ && IsoDrawingUtil))
            {
               §§push(_loc10_);
               if(!(_loc12_ && Boolean(param3)))
               {
                  if(§§pop() !== §§pop())
                  {
                     §§push(IsoOrientation.YZ);
                     if(_loc11_ || Boolean(param3))
                     {
                        addr01e6:
                        §§push(_loc10_);
                        if(!_loc12_)
                        {
                           addr01ee:
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc12_ && Boolean(param1)))
                              {
                                 §§push(1);
                                 if(_loc11_ || Boolean(param2))
                                 {
                                 }
                              }
                              else
                              {
                                 §§goto(addr0220);
                              }
                              §§goto(addr0238);
                           }
                           else
                           {
                              §§goto(addr021c);
                           }
                        }
                        addr021c:
                        §§goto(addr021a);
                     }
                     addr021a:
                     if(IsoOrientation.XY === _loc10_)
                     {
                        §§goto(addr0220);
                     }
                     else
                     {
                        §§push(3);
                     }
                     addr0238:
                     switch(§§pop())
                     {
                        case 0:
                           _loc7_ = IsoMath.isoToScreen(new Pt(param2.x + param3,param2.y,param2.z));
                           _loc8_ = IsoMath.isoToScreen(new Pt(param2.x + param3,param2.y,param2.z + param4));
                           _loc9_ = IsoMath.isoToScreen(new Pt(param2.x,param2.y,param2.z + param4));
                           if(!_loc12_)
                           {
                              addr024b:
                              param1.moveTo(_loc6_.x,_loc6_.y);
                              if(_loc11_)
                              {
                                 param1.lineTo(_loc7_.x,_loc7_.y);
                                 if(_loc11_ || IsoDrawingUtil)
                                 {
                                    param1.lineTo(_loc8_.x,_loc8_.y);
                                    addr0279:
                                    if(!_loc12_)
                                    {
                                       param1.lineTo(_loc9_.x,_loc9_.y);
                                       if(!(_loc11_ || Boolean(param1)))
                                       {
                                          break;
                                       }
                                    }
                                 }
                                 addr02b3:
                                 param1.lineTo(_loc6_.x,_loc6_.y);
                                 break;
                              }
                              §§goto(addr0279);
                           }
                           §§goto(addr02b3);
                        case 1:
                           _loc7_ = IsoMath.isoToScreen(new Pt(param2.x,param2.y + param3,param2.z));
                           _loc8_ = IsoMath.isoToScreen(new Pt(param2.x,param2.y + param3,param2.z + param4));
                           _loc9_ = IsoMath.isoToScreen(new Pt(param2.x,param2.y,param2.z + param4));
                           §§goto(addr024b);
                        case 2:
                        default:
                           _loc7_ = IsoMath.isoToScreen(new Pt(param2.x + param3,param2.y,param2.z));
                           _loc8_ = IsoMath.isoToScreen(new Pt(param2.x + param3,param2.y + param4,param2.z));
                           _loc9_ = IsoMath.isoToScreen(new Pt(param2.x,param2.y + param4,param2.z));
                           §§goto(addr024b);
                     }
                     return;
                  }
                  if(_loc11_ || IsoDrawingUtil)
                  {
                     §§push(0);
                     if(_loc12_ && Boolean(param1))
                     {
                     }
                  }
                  else
                  {
                     addr0220:
                     §§push(2);
                     if(_loc12_)
                     {
                     }
                  }
                  §§goto(addr0238);
                  §§goto(addr0220);
               }
               §§goto(addr01ee);
            }
            §§goto(addr01e6);
         }
         §§goto(addr0220);
      }
      
      public static function drawIsoArrow(param1:Graphics, param2:Pt, param3:Number, param4:Number = 27, param5:Number = 6, param6:String = "xy") : void
      {
         var _temp_1:* = true;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = _temp_1;
         var _loc11_:Pt = null;
         var _loc7_:Pt = new Pt();
         var _loc8_:Pt = new Pt();
         var _loc9_:Pt = new Pt();
         §§push(Math.PI / 180);
         if(!(_loc13_ && Boolean(param1)))
         {
            §§push(§§pop());
         }
         var _loc10_:* = §§pop();
         var _loc12_:* = param6;
         if(!_loc13_)
         {
            §§push(IsoOrientation.XZ);
            if(_loc14_)
            {
               §§push(_loc12_);
               if(_loc14_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc14_)
                     {
                        addr0362:
                        §§push(0);
                        if(_loc13_ && Boolean(param1))
                        {
                        }
                     }
                     else
                     {
                        addr03a4:
                        §§push(1);
                        if(_loc13_ && Boolean(param3))
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(IsoOrientation.YZ);
                     if(!(_loc13_ && IsoDrawingUtil))
                     {
                        §§push(_loc12_);
                        if(!_loc13_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc14_ || Boolean(param2))
                              {
                                 §§goto(addr03a4);
                              }
                              else
                              {
                                 addr03c4:
                                 §§push(2);
                                 if(_loc14_)
                                 {
                                 }
                              }
                              §§goto(addr03dc);
                           }
                           else
                           {
                              §§goto(addr03c0);
                           }
                        }
                        addr03c0:
                        §§goto(addr03be);
                     }
                     addr03be:
                     if(IsoOrientation.XY === _loc12_)
                     {
                        §§goto(addr03c4);
                     }
                     else
                     {
                        §§push(3);
                     }
                     §§goto(addr03dc);
                  }
                  addr03dc:
                  switch(§§pop())
                  {
                     case 0:
                        _loc7_ = Pt.polar(new Pt(0,0,0),param4,param3 * _loc10_);
                        _loc11_ = new Pt(_loc7_.x + param2.x,_loc7_.z + param2.y,_loc7_.y + param2.z);
                        _loc7_ = IsoMath.isoToScreen(_loc11_);
                        _loc8_ = Pt.polar(new Pt(0,0,0),param5 / 2,(param3 + 90) * _loc10_);
                        _loc11_ = new Pt(_loc8_.x + param2.x,_loc8_.z + param2.y,_loc8_.y + param2.z);
                        _loc8_ = IsoMath.isoToScreen(_loc11_);
                        _loc9_ = Pt.polar(new Pt(0,0,0),param5 / 2,(param3 + 270) * _loc10_);
                        _loc11_ = new Pt(_loc9_.x + param2.x,_loc9_.z + param2.y,_loc9_.y + param2.z);
                        _loc9_ = IsoMath.isoToScreen(_loc11_);
                        if(!_loc13_)
                        {
                           addr03ef:
                           param1.moveTo(_loc7_.x,_loc7_.y);
                           if(_loc14_)
                           {
                              param1.lineTo(_loc8_.x,_loc8_.y);
                              if(!_loc13_)
                              {
                                 param1.lineTo(_loc9_.x,_loc9_.y);
                                 if(!_loc14_)
                                 {
                                    break;
                                 }
                              }
                           }
                        }
                        param1.lineTo(_loc7_.x,_loc7_.y);
                        break;
                     case 1:
                        _loc7_ = Pt.polar(new Pt(0,0,0),param4,param3 * _loc10_);
                        _loc11_ = new Pt(_loc7_.z + param2.x,_loc7_.x + param2.y,_loc7_.y + param2.z);
                        _loc7_ = IsoMath.isoToScreen(_loc11_);
                        _loc8_ = Pt.polar(new Pt(0,0,0),param5 / 2,(param3 + 90) * _loc10_);
                        _loc11_ = new Pt(_loc8_.z + param2.x,_loc8_.x + param2.y,_loc8_.y + param2.z);
                        _loc8_ = IsoMath.isoToScreen(_loc11_);
                        _loc9_ = Pt.polar(new Pt(0,0,0),param5 / 2,(param3 + 270) * _loc10_);
                        _loc11_ = new Pt(_loc9_.z + param2.x,_loc9_.x + param2.y,_loc9_.y + param2.z);
                        _loc9_ = IsoMath.isoToScreen(_loc11_);
                        §§goto(addr03ef);
                     case 2:
                     default:
                        §§push(Pt);
                        §§push(param2);
                        §§push(param4);
                        §§push(param3);
                        if(_loc14_)
                        {
                           §§push(§§pop() * _loc10_);
                        }
                        _loc7_ = §§pop().polar(§§pop(),§§pop(),§§pop());
                        _loc7_ = IsoMath.isoToScreen(_loc7_);
                        §§push(Pt);
                        §§push(param2);
                        §§push(param5);
                        if(_loc14_ || Boolean(param3))
                        {
                           §§push(§§pop() / 2);
                        }
                        §§push(param3);
                        if(!(_loc13_ && Boolean(param2)))
                        {
                           §§push(§§pop() + 90);
                           if(_loc14_ || Boolean(param2))
                           {
                              §§push(§§pop() * _loc10_);
                           }
                        }
                        _loc8_ = §§pop().polar(§§pop(),§§pop(),§§pop());
                        _loc8_ = IsoMath.isoToScreen(_loc8_);
                        §§push(Pt);
                        §§push(param2);
                        §§push(param5);
                        if(_loc14_)
                        {
                           §§push(§§pop() / 2);
                        }
                        §§push(param3);
                        if(!_loc13_)
                        {
                           §§push(§§pop() + 270);
                           if(!(_loc13_ && IsoDrawingUtil))
                           {
                              §§push(§§pop() * _loc10_);
                           }
                        }
                        _loc9_ = §§pop().polar(§§pop(),§§pop(),§§pop());
                        _loc9_ = IsoMath.isoToScreen(_loc9_);
                        §§goto(addr03ef);
                  }
                  return;
               }
               §§goto(addr03c0);
            }
            §§goto(addr03be);
         }
         §§goto(addr0362);
      }
      
      public static function getIsoBitmapData(param1:IIsoDisplayObject) : BitmapData
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         §§push(param1.renderAsOrphan);
         if(!(_loc6_ && IsoDrawingUtil))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc5_ || _loc3_)
         {
            param1.renderAsOrphan = true;
            if(!(_loc6_ && _loc3_))
            {
               param1.render();
               if(_loc5_)
               {
                  addr0060:
                  param1.renderAsOrphan = _loc2_;
               }
            }
            var _loc3_:Rectangle = param1.container.getBounds(param1.container);
            var _loc4_:BitmapData = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            _loc4_.draw(param1.container,new Matrix(1,0,0,1,_loc3_.x * -1,_loc3_.y * -1));
            return _loc4_;
         }
         §§goto(addr0060);
      }
      
      public static function getIsoMatrix(param1:String) : Matrix
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc3_:Matrix = null;
         var _loc2_:Matrix = new Matrix();
         var _loc4_:* = param1;
         if(_loc6_ || Boolean(param1))
         {
            §§push(IsoOrientation.XY);
            if(!_loc5_)
            {
               §§push(_loc4_);
               if(!_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc6_ || Boolean(_loc3_))
                     {
                        §§push(0);
                        if(_loc5_ && Boolean(_loc2_))
                        {
                        }
                     }
                     else
                     {
                        addr0177:
                        §§push(2);
                        if(_loc6_)
                        {
                        }
                     }
                     §§goto(addr018f);
                  }
                  else
                  {
                     §§push(IsoOrientation.XZ);
                     if(!(_loc5_ && Boolean(_loc2_)))
                     {
                        §§push(_loc4_);
                        if(!_loc5_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc6_)
                              {
                                 §§push(1);
                                 if(_loc5_)
                                 {
                                 }
                              }
                              else
                              {
                                 §§goto(addr0177);
                              }
                              §§goto(addr018f);
                           }
                           else
                           {
                              §§goto(addr0173);
                           }
                        }
                        addr0173:
                     }
                     §§goto(addr0171);
                  }
               }
               §§goto(addr0173);
            }
            addr0171:
            if(IsoOrientation.YZ === _loc4_)
            {
               §§goto(addr0177);
            }
            else
            {
               §§push(3);
            }
            addr018f:
            switch(§§pop())
            {
               case 0:
                  _loc3_ = new Matrix();
                  if(!_loc5_)
                  {
                     _loc3_.scale(1,0.5);
                     if(_loc5_ && IsoDrawingUtil)
                     {
                        break;
                     }
                     _loc2_.rotate(Math.PI / 4);
                     if(!(_loc6_ || Boolean(param1)))
                     {
                        break;
                     }
                     _loc2_.scale(Math.SQRT2,Math.SQRT2);
                     if(_loc5_)
                     {
                        break;
                     }
                  }
                  _loc2_.concat(_loc3_);
                  if(_loc6_ || Boolean(_loc3_))
                  {
                  }
                  break;
               case 1:
                  _loc2_.b = Math.PI / 180 * 30;
                  if(_loc5_)
                  {
                  }
                  break;
               case 2:
                  _loc2_.b = Math.PI / 180 * -30;
            }
            return _loc2_;
         }
         §§goto(addr0177);
      }
   }
}

