package as3isolib.display.primitive
{
   import as3isolib.geom.IsoMath;
   import as3isolib.geom.Pt;
   
   public class IsoRectangle extends IsoPolygon
   {
      
      public function IsoRectangle(param1:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            super(param1);
            if(!_loc4_)
            {
               §§goto(addr0021);
            }
            §§goto(addr004c);
         }
         addr0021:
         if(!param1)
         {
            if(_loc3_ || _loc2_)
            {
               addr004c:
               §§push(§§findproperty(width));
               §§push(§§findproperty(length));
               var _loc2_:*;
               height = _loc2_ = 0;
               §§push(_loc2_);
               if(!(_loc4_ && Boolean(param1)))
               {
                  _loc2_ = §§pop();
                  §§push(_loc2_);
               }
               §§pop().length = §§pop();
               §§pop().width = _loc2_;
            }
         }
      }
      
      override protected function validateGeometry() : Boolean
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:Pt = null;
         if(!(_loc4_ && Boolean(this)))
         {
            pts = [];
            if(!_loc4_)
            {
               pts.push(new Pt(0,0,0));
               if(!_loc4_)
               {
                  §§push(width > 0);
                  if(_loc5_ || _loc3_)
                  {
                     var _temp_4:* = §§pop();
                     §§push(_temp_4);
                     §§push(_temp_4);
                     if(_loc5_)
                     {
                        if(§§pop())
                        {
                           if(_loc5_)
                           {
                              addr0072:
                              §§pop();
                              if(!_loc4_)
                              {
                                 §§push(length > 0);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    addr008c:
                                    var _temp_6:* = §§pop();
                                    §§push(_temp_6);
                                    §§push(_temp_6);
                                    if(_loc5_ || Boolean(this))
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc4_ && Boolean(this)))
                                          {
                                             §§pop();
                                             if(_loc5_)
                                             {
                                                §§push(height <= 0);
                                                if(_loc5_ || Boolean(this))
                                                {
                                                   §§goto(addr00c7);
                                                }
                                                §§goto(addr027f);
                                             }
                                             §§goto(addr02e9);
                                          }
                                          §§goto(addr0265);
                                       }
                                       addr00c7:
                                       if(§§pop())
                                       {
                                          if(!(_loc4_ && Boolean(this)))
                                          {
                                             pts.push(new Pt(width,0,0));
                                             if(!_loc4_)
                                             {
                                                addr00f1:
                                                pts.push(new Pt(width,length,0));
                                                if(!_loc4_)
                                                {
                                                   pts.push(new Pt(0,length,0));
                                                   if(_loc4_)
                                                   {
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                addr01b7:
                                                pts.push(new Pt(width,0,0));
                                                if(!_loc4_)
                                                {
                                                   pts.push(new Pt(width,0,height));
                                                   if(_loc5_ || _loc2_)
                                                   {
                                                      pts.push(new Pt(0,0,height));
                                                      if(_loc4_)
                                                      {
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr0274);
                                                }
                                             }
                                             §§goto(addr02e9);
                                          }
                                          §§goto(addr01b7);
                                       }
                                       else
                                       {
                                          §§push(width > 0);
                                          if(!_loc4_)
                                          {
                                             addr0132:
                                             var _temp_15:* = §§pop();
                                             §§push(_temp_15);
                                             §§push(_temp_15);
                                             if(_loc5_)
                                             {
                                                addr0139:
                                                if(§§pop())
                                                {
                                                   if(!(_loc4_ && Boolean(_loc2_)))
                                                   {
                                                      §§pop();
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         §§push(length <= 0);
                                                         if(_loc5_)
                                                         {
                                                            addr0165:
                                                            var _temp_18:* = §§pop();
                                                            §§push(_temp_18);
                                                            §§push(_temp_18);
                                                            if(_loc5_ || Boolean(this))
                                                            {
                                                               addr0174:
                                                               if(§§pop())
                                                               {
                                                                  if(_loc5_ || _loc3_)
                                                                  {
                                                                     §§pop();
                                                                     if(_loc5_ || Boolean(_loc2_))
                                                                     {
                                                                        addr01a2:
                                                                        §§push(height > 0);
                                                                        if(!_loc4_)
                                                                        {
                                                                           addr01ad:
                                                                           if(§§pop())
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§goto(addr01b7);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr024f:
                                                                                 §§push(length > 0);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr025a:
                                                                                    var _temp_22:* = §§pop();
                                                                                    addr025b:
                                                                                    §§push(_temp_22);
                                                                                    if(_temp_22)
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          §§goto(addr0265);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr027f);
                                                                                 }
                                                                                 addr0265:
                                                                                 §§pop();
                                                                                 if(_loc5_ || Boolean(_loc1_))
                                                                                 {
                                                                                    §§goto(addr0274);
                                                                                 }
                                                                                 §§goto(addr02e9);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(width <= 0);
                                                                              if(_loc5_ || Boolean(this))
                                                                              {
                                                                                 addr021f:
                                                                                 var _temp_25:* = §§pop();
                                                                                 §§push(_temp_25);
                                                                                 §§push(_temp_25);
                                                                                 if(!(_loc4_ && Boolean(_loc2_)))
                                                                                 {
                                                                                    addr022e:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc5_ || Boolean(_loc2_))
                                                                                       {
                                                                                          addr0240:
                                                                                          §§pop();
                                                                                          if(_loc5_ || Boolean(_loc1_))
                                                                                          {
                                                                                             §§goto(addr024f);
                                                                                          }
                                                                                          addr0274:
                                                                                          §§push(height > 0);
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             addr027f:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!(_loc4_ && Boolean(_loc1_)))
                                                                                                {
                                                                                                   pts.push(new Pt(0,length,0));
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      addr02aa:
                                                                                                      pts.push(new Pt(0,length,height));
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         addr02c3:
                                                                                                         pts.push(new Pt(0,0,height));
                                                                                                         if(_loc5_ || Boolean(this))
                                                                                                         {
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr02e9);
                                                                                                }
                                                                                                §§goto(addr02c3);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(false);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr02e8);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr025a);
                                                                                 }
                                                                                 §§goto(addr025b);
                                                                              }
                                                                           }
                                                                           §§goto(addr025a);
                                                                        }
                                                                        §§goto(addr021f);
                                                                     }
                                                                     §§goto(addr024f);
                                                                  }
                                                                  §§goto(addr02e8);
                                                               }
                                                               §§goto(addr01ad);
                                                            }
                                                            §§goto(addr022e);
                                                         }
                                                         §§goto(addr0240);
                                                      }
                                                      addr02e9:
                                                      for each(_loc1_ in pts)
                                                      {
                                                         if(!(_loc4_ && Boolean(_loc1_)))
                                                         {
                                                            IsoMath.isoToScreen(_loc1_);
                                                         }
                                                      }
                                                      return true;
                                                   }
                                                   §§goto(addr01ad);
                                                }
                                                §§goto(addr0165);
                                             }
                                             §§goto(addr0174);
                                          }
                                       }
                                       addr02e8:
                                       return §§pop();
                                    }
                                    §§goto(addr025b);
                                 }
                                 §§goto(addr0132);
                              }
                              §§goto(addr00f1);
                           }
                           §§goto(addr025a);
                        }
                        §§goto(addr008c);
                     }
                     §§goto(addr0139);
                  }
                  §§goto(addr0072);
               }
               §§goto(addr02aa);
            }
            §§goto(addr01a2);
         }
         §§goto(addr02c3);
      }
      
      override protected function drawGeometry() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super.drawGeometry();
            if(_loc1_ || _loc1_)
            {
               addr003a:
               geometryPts = [];
            }
            return;
         }
         §§goto(addr003a);
      }
   }
}

