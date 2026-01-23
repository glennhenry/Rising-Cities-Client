package as3isolib.geom.transformations
{
   import as3isolib.geom.Pt;
   
   public class DefaultIsometricTransformation implements IAxonometricTransformation
   {
      
      private var radians:Number;
      
      private var ratio:Number = 2;
      
      private var bAxonometricAxesProjection:Boolean;
      
      private var bMaintainZAxisRatio:Boolean;
      
      private var axialProjection:Number;
      
      public function DefaultIsometricTransformation(param1:Boolean = false, param2:Boolean = false)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && param2))
         {
            this.axialProjection = Math.cos(Math.atan(0.5));
            if(!_loc3_)
            {
               super();
               if(_loc4_)
               {
                  this.bAxonometricAxesProjection = param1;
                  if(_loc4_)
                  {
                     this.bMaintainZAxisRatio = param2;
                  }
               }
            }
         }
      }
      
      public function screenToSpace(param1:Pt) : Pt
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         §§push(param1.z);
         if(!(_loc6_ && _loc2_))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         §§push(param1.y - param1.x / this.ratio);
         if(_loc5_)
         {
            §§push(§§pop() + param1.z);
            if(_loc5_ || _loc3_)
            {
               §§push(§§pop());
            }
         }
         var _loc3_:* = §§pop();
         §§push(param1.x / this.ratio);
         if(!_loc6_)
         {
            §§push(§§pop() + param1.y + param1.z);
         }
         var _loc4_:* = §§pop();
         if(!(_loc6_ && _loc2_))
         {
            §§push(this.bAxonometricAxesProjection);
            if(!(_loc6_ && _loc3_))
            {
               §§push(!§§pop());
               if(_loc5_)
               {
                  var _temp_5:* = §§pop();
                  §§push(_temp_5);
                  if(_temp_5)
                  {
                     if(_loc5_)
                     {
                        §§pop();
                        if(!_loc6_)
                        {
                           §§push(this.bMaintainZAxisRatio);
                           if(!_loc6_)
                           {
                              addr00b6:
                              §§push(§§pop());
                              if(_loc5_)
                              {
                                 addr00bd:
                                 if(§§pop())
                                 {
                                    if(!(_loc6_ && Boolean(this)))
                                    {
                                       addr00cf:
                                       §§push(_loc2_);
                                       if(_loc5_)
                                       {
                                          §§push(this.axialProjection);
                                          if(!(_loc6_ && Boolean(this)))
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc5_)
                                             {
                                                §§push(§§pop());
                                                if(!(_loc6_ && Boolean(param1)))
                                                {
                                                   _loc2_ = §§pop();
                                                   if(!_loc6_)
                                                   {
                                                      §§goto(addr0105);
                                                   }
                                                   §§goto(addr0143);
                                                }
                                                §§goto(addr0133);
                                             }
                                             §§goto(addr0160);
                                          }
                                          §§goto(addr0125);
                                       }
                                       §§goto(addr0160);
                                    }
                                    §§goto(addr0143);
                                 }
                                 addr0105:
                                 §§goto(addr0109);
                              }
                           }
                           §§goto(addr0109);
                        }
                        §§goto(addr00cf);
                     }
                     §§goto(addr00b6);
                  }
                  §§goto(addr00bd);
               }
               §§goto(addr00b6);
            }
            addr0109:
            if(this.bAxonometricAxesProjection)
            {
               if(!_loc6_)
               {
                  §§push(_loc4_);
                  if(!_loc6_)
                  {
                     §§push(this.axialProjection);
                     if(_loc5_)
                     {
                        addr0125:
                        §§push(§§pop() / §§pop());
                        if(_loc5_)
                        {
                           addr012c:
                           §§push(§§pop());
                           if(_loc5_)
                           {
                              addr0133:
                              _loc4_ = §§pop();
                              if(!(_loc6_ && Boolean(param1)))
                              {
                                 addr0143:
                                 §§push(_loc3_);
                                 if(!(_loc6_ && Boolean(this)))
                                 {
                                    addr0174:
                                    addr0164:
                                    addr0160:
                                    §§push(§§pop() / this.axialProjection);
                                    if(!(_loc6_ && Boolean(this)))
                                    {
                                       addr0173:
                                       §§push(§§pop());
                                    }
                                    _loc3_ = §§pop();
                                    §§goto(addr0175);
                                 }
                                 §§goto(addr0173);
                              }
                              §§goto(addr0175);
                           }
                           §§goto(addr0173);
                        }
                        §§goto(addr0174);
                     }
                     §§goto(addr0164);
                  }
                  §§goto(addr012c);
               }
               §§goto(addr0143);
            }
            addr0175:
            return new Pt(_loc4_,_loc3_,_loc2_);
         }
         §§goto(addr0105);
      }
      
      public function spaceToScreen(param1:Pt) : Pt
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(_loc5_)
         {
            §§push(this.bAxonometricAxesProjection);
            if(_loc5_ || Boolean(this))
            {
               §§push(!§§pop());
               if(!(_loc6_ && _loc3_))
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(_temp_3)
                  {
                     if(_loc5_)
                     {
                        §§pop();
                        if(_loc5_ || _loc2_)
                        {
                           addr0054:
                           §§push(this.bMaintainZAxisRatio);
                           if(_loc5_)
                           {
                              addr005e:
                              §§push(§§pop());
                              if(!(_loc6_ && _loc3_))
                              {
                                 addr006d:
                                 if(§§pop())
                                 {
                                    if(_loc5_ || Boolean(param1))
                                    {
                                       §§push(param1);
                                       §§push(param1.z);
                                       if(!(_loc6_ && _loc2_))
                                       {
                                          §§push(§§pop() / this.axialProjection);
                                       }
                                       §§pop().z = §§pop();
                                       if(_loc5_)
                                       {
                                          §§goto(addr00ae);
                                       }
                                       §§goto(addr00cd);
                                    }
                                 }
                                 addr00ae:
                              }
                              §§goto(addr00b2);
                           }
                           §§goto(addr006d);
                        }
                        §§goto(addr00cd);
                     }
                     §§goto(addr00b2);
                  }
                  §§goto(addr006d);
               }
               §§goto(addr005e);
            }
            addr00b2:
            if(this.bAxonometricAxesProjection)
            {
               if(_loc5_)
               {
                  param1.x *= this.axialProjection;
                  if(_loc5_)
                  {
                     addr00cd:
                     param1.y *= this.axialProjection;
                  }
                  §§goto(addr00d8);
               }
               §§goto(addr00cd);
            }
            addr00d8:
            §§push(param1.z);
            if(_loc5_)
            {
               §§push(§§pop());
            }
            var _loc2_:* = §§pop();
            §§push((param1.x + param1.y) / this.ratio);
            if(!_loc6_)
            {
               §§push(§§pop() - param1.z);
               if(!_loc6_)
               {
                  §§push(§§pop());
               }
            }
            var _loc3_:* = §§pop();
            §§push(param1.x - param1.y);
            if(_loc5_)
            {
               §§push(§§pop());
            }
            var _loc4_:* = §§pop();
            return new Pt(_loc4_,_loc3_,_loc2_);
         }
         §§goto(addr0054);
      }
   }
}

