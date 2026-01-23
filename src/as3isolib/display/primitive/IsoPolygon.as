package as3isolib.display.primitive
{
   import as3isolib.core.as3isolib_internal;
   import as3isolib.enum.RenderStyleType;
   import as3isolib.graphics.IFill;
   import as3isolib.graphics.IStroke;
   import flash.display.Graphics;
   
   use namespace as3isolib_internal;
   
   public class IsoPolygon extends IsoPrimitive
   {
      
      protected var geometryPts:Array;
      
      public function IsoPolygon(param1:Object = null)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this.geometryPts = [];
            if(!(_loc2_ && Boolean(param1)))
            {
               addr0044:
               super(param1);
            }
            return;
         }
         §§goto(addr0044);
      }
      
      override protected function validateGeometry() : Boolean
      {
         return this.pts.length > 2;
      }
      
      override protected function drawGeometry() : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc1_:Graphics = mainContainer.graphics;
         if(!_loc6_)
         {
            _loc1_.clear();
            if(!(_loc6_ && _loc2_))
            {
               addr0038:
               _loc1_.moveTo(this.pts[0].x,this.pts[0].y);
            }
            var _loc2_:IFill = IFill(fills[0]);
            if(_loc7_)
            {
               §§push(Boolean(_loc2_));
               if(_loc7_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(_temp_3)
                  {
                     if(!_loc6_)
                     {
                        addr0083:
                        §§pop();
                        if(!_loc6_)
                        {
                           §§push(styleType == RenderStyleType.WIREFRAME);
                           if(!(_loc6_ && Boolean(_loc1_)))
                           {
                              §§push(!§§pop());
                              if(!(_loc6_ && Boolean(this)))
                              {
                                 addr00b1:
                                 if(§§pop())
                                 {
                                    if(_loc7_)
                                    {
                                       addr00bb:
                                       _loc2_.begin(_loc1_);
                                       if(!(_loc6_ && Boolean(this)))
                                       {
                                          var _loc3_:IStroke = strokes.length >= 1 ? IStroke(strokes[0]) : DEFAULT_STROKE;
                                          §§goto(addr00d0);
                                       }
                                    }
                                    §§goto(addr00dc);
                                 }
                                 addr00d0:
                              }
                              §§goto(addr00d8);
                           }
                           §§goto(addr00b1);
                        }
                        §§goto(addr00bb);
                     }
                     addr00d8:
                     if(!_loc6_)
                     {
                        if(_loc3_)
                        {
                           if(!(_loc6_ && Boolean(this)))
                           {
                              _loc3_.apply(_loc1_);
                           }
                        }
                     }
                     var _loc4_:* = 1;
                     var _loc5_:uint = this.pts.length;
                     loop0:
                     while(true)
                     {
                        §§push(_loc4_);
                        while(true)
                        {
                           if(§§pop() >= _loc5_)
                           {
                              if(!(_loc6_ && Boolean(_loc2_)))
                              {
                                 _loc1_.lineTo(this.pts[0].x,this.pts[0].y);
                                 if(_loc7_)
                                 {
                                    addr01d8:
                                    if(_loc2_)
                                    {
                                       if(!(_loc6_ && Boolean(_loc1_)))
                                       {
                                          break;
                                       }
                                    }
                                 }
                                 §§goto(addr01f2);
                              }
                              §§goto(addr01d8);
                           }
                           else
                           {
                              _loc1_.lineTo(this.pts[_loc4_].x,this.pts[_loc4_].y);
                              if(_loc6_ && Boolean(this))
                              {
                                 break;
                              }
                              §§push(_loc4_);
                              if(_loc7_)
                              {
                                 §§push(uint(§§pop() + 1));
                                 if(_loc6_ && Boolean(this))
                                 {
                                    continue;
                                 }
                              }
                              _loc4_ = §§pop();
                              if(!(_loc6_ && Boolean(_loc2_)))
                              {
                                 continue loop0;
                              }
                           }
                           §§goto(addr01f2);
                        }
                        break;
                     }
                     _loc2_.end(_loc1_);
                     addr01f2:
                     return;
                  }
                  §§goto(addr00b1);
               }
               §§goto(addr0083);
            }
            §§goto(addr00bb);
         }
         §§goto(addr0038);
      }
      
      public function get pts() : Array
      {
         return this.geometryPts;
      }
      
      public function set pts(param1:Array) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(this.geometryPts != param1)
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  this.geometryPts = param1;
                  addr0039:
                  if(!_loc2_)
                  {
                     invalidateSize();
                     if(_loc3_ || _loc2_)
                     {
                        if(autoUpdate)
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              addr0076:
                              render();
                           }
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr0076);
            }
            addr007d:
            return;
         }
         §§goto(addr0039);
      }
   }
}

