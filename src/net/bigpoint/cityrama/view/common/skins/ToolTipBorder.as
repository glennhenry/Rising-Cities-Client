package net.bigpoint.cityrama.view.common.skins
{
   import flash.display.Graphics;
   import flash.filters.DropShadowFilter;
   import flash.geom.Rectangle;
   import mx.controls.ToolTip;
   import mx.core.EdgeMetrics;
   import mx.core.IRectangularBorder;
   import mx.graphics.RectangularDropShadow;
   import mx.styles.ISimpleStyleClient;
   import spark.components.supportClasses.SkinnableComponent;
   
   public class ToolTipBorder extends SkinnableComponent implements IRectangularBorder, ISimpleStyleClient
   {
      
      private var dropShadow:RectangularDropShadow;
      
      private var _borderMetrics:EdgeMetrics;
      
      public function ToolTipBorder()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               setStyle("skinClass",ToolTipBorderSkin);
            }
         }
      }
      
      public function get borderMetrics() : EdgeMetrics
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(_loc2_))
         {
            §§push(this._borderMetrics);
            if(_loc4_ || _loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr004b);
                  }
               }
               addr004c:
               var _loc1_:String = getStyle("borderStyle");
               var _loc2_:* = _loc1_;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  §§push("errorTipRight");
                  if(_loc4_ || Boolean(this))
                  {
                     §§push(_loc2_);
                     if(_loc4_ || _loc3_)
                     {
                        if(§§pop() !== §§pop())
                        {
                           §§push("errorTipAbove");
                           if(_loc4_ || Boolean(_loc1_))
                           {
                              addr0155:
                              §§push(_loc2_);
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       §§push(1);
                                       if(_loc3_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr0194);
                                    }
                                    §§goto(addr01ab);
                                 }
                                 else
                                 {
                                    §§goto(addr0190);
                                 }
                              }
                              addr0190:
                              §§goto(addr018f);
                           }
                           addr018f:
                           if("errorTipBelow" === _loc2_)
                           {
                              §§goto(addr0194);
                           }
                           else
                           {
                              §§push(3);
                           }
                           addr01ab:
                           switch(§§pop())
                           {
                              case 0:
                                 this._borderMetrics = new EdgeMetrics(15,1,3,3);
                                 if(_loc3_ && _loc3_)
                                 {
                                 }
                                 break;
                              case 1:
                                 this._borderMetrics = new EdgeMetrics(3,1,3,15);
                                 if(_loc3_)
                                 {
                                 }
                                 break;
                              case 2:
                                 this._borderMetrics = new EdgeMetrics(3,13,3,3);
                                 if(_loc3_)
                                 {
                                 }
                                 break;
                              default:
                                 this._borderMetrics = new EdgeMetrics(3,1,3,3);
                                 if(_loc3_ && Boolean(_loc2_))
                                 {
                                 }
                           }
                           return this._borderMetrics;
                        }
                        if(_loc4_ || Boolean(_loc1_))
                        {
                           addr012f:
                           §§push(0);
                           if(_loc4_ || _loc3_)
                           {
                           }
                        }
                        else
                        {
                           addr0194:
                           §§push(2);
                           if(_loc3_)
                           {
                           }
                        }
                        §§goto(addr01ab);
                        §§goto(addr0194);
                     }
                     §§goto(addr0190);
                  }
                  §§goto(addr0155);
               }
               §§goto(addr012f);
            }
            addr004b:
            return this._borderMetrics;
         }
         §§goto(addr004c);
      }
      
      override public function styleChanged(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            §§push(param1);
            if(_loc2_)
            {
               §§push("borderStyle");
               if(!_loc3_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc2_)
                  {
                     var _temp_2:* = §§pop();
                     §§push(_temp_2);
                     §§push(_temp_2);
                     if(!_loc3_)
                     {
                        if(!§§pop())
                        {
                           if(_loc2_ || Boolean(param1))
                           {
                              addr004b:
                              §§pop();
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§push(param1);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr0076:
                                    §§push(§§pop() == "styleName");
                                    if(!_loc3_)
                                    {
                                       addr007c:
                                       var _temp_6:* = §§pop();
                                       addr007d:
                                       §§push(_temp_6);
                                       if(!_temp_6)
                                       {
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             §§goto(addr009a);
                                          }
                                       }
                                    }
                                    §§goto(addr00ab);
                                 }
                                 §§goto(addr00a9);
                              }
                              §§goto(addr00be);
                           }
                           addr009a:
                           §§pop();
                           if(_loc2_ || _loc2_)
                           {
                              addr00ab:
                              addr00a9:
                              if(param1 == null)
                              {
                                 if(!_loc3_)
                                 {
                                    §§goto(addr00b4);
                                 }
                              }
                              §§goto(addr00be);
                           }
                           addr00b4:
                           this._borderMetrics = null;
                           if(!_loc3_)
                           {
                              addr00be:
                              invalidateDisplayList();
                           }
                           §§goto(addr00c5);
                        }
                        §§goto(addr007c);
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr004b);
               }
               §§goto(addr0076);
            }
            §§goto(addr00a9);
         }
         addr00c5:
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         if(_loc10_)
         {
            super.updateDisplayList(param1,param2);
            if(_loc10_ || Boolean(this))
            {
               addr002e:
               skin.width = param1;
               if(_loc10_ || Boolean(param1))
               {
                  skin.height = param2;
               }
            }
            var _loc3_:String = getStyle("borderStyle");
            var _loc4_:uint = uint(getStyle("backgroundColor"));
            var _loc5_:Number = Number(getStyle("backgroundAlpha"));
            var _loc6_:uint = uint(getStyle("borderColor"));
            var _loc7_:Number = Number(getStyle("cornerRadius"));
            var _loc8_:Graphics = graphics;
            _loc8_.clear();
            if(_loc10_)
            {
               filters = [];
            }
            var _loc9_:* = _loc3_;
            if(!_loc11_)
            {
               §§push("none");
               if(!_loc11_)
               {
                  §§push(_loc9_);
                  if(!(_loc11_ && Boolean(param2)))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc11_ && Boolean(this)))
                        {
                           §§push(0);
                           if(_loc11_ && Boolean(param2))
                           {
                           }
                        }
                        else
                        {
                           addr03c6:
                           §§push(2);
                           if(_loc10_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push("errorTipRight");
                        if(_loc10_)
                        {
                           §§push(_loc9_);
                           if(!_loc11_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc11_ && Boolean(param1)))
                                 {
                                    §§push(1);
                                    if(_loc10_ || Boolean(param1))
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr03c6);
                                 }
                              }
                              else
                              {
                                 §§push("errorTipAbove");
                                 if(_loc10_ || Boolean(this))
                                 {
                                    §§push(_loc9_);
                                    if(!_loc11_)
                                    {
                                       addr03bc:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc11_)
                                          {
                                             §§goto(addr03c6);
                                          }
                                          else
                                          {
                                             addr03dc:
                                             §§push(3);
                                             if(_loc11_)
                                             {
                                             }
                                          }
                                          §§goto(addr03f4);
                                       }
                                       else
                                       {
                                          §§goto(addr03d8);
                                       }
                                    }
                                    addr03d8:
                                    §§goto(addr03d6);
                                 }
                                 addr03d6:
                                 if("errorTipBelow" === _loc9_)
                                 {
                                    §§goto(addr03dc);
                                 }
                                 else
                                 {
                                    §§push(4);
                                 }
                                 §§goto(addr03f4);
                              }
                              §§goto(addr03f4);
                           }
                           §§goto(addr03bc);
                        }
                        §§goto(addr03d6);
                     }
                     addr03f4:
                     switch(§§pop())
                     {
                        case 0:
                           break;
                        case 1:
                           drawRoundRect(11,0,param1 - 11,param2 - 2,3,_loc6_,_loc5_);
                           if(!(_loc11_ && Boolean(this)))
                           {
                              _loc8_.beginFill(_loc6_,_loc5_);
                              if(_loc11_)
                              {
                                 break;
                              }
                              _loc8_.moveTo(11,7);
                              if(!(_loc11_ && Boolean(_loc3_)))
                              {
                                 _loc8_.lineTo(0,13);
                                 if(_loc10_ || Boolean(_loc3_))
                                 {
                                    _loc8_.lineTo(11,19);
                                    if(_loc10_ || Boolean(_loc3_))
                                    {
                                       _loc8_.moveTo(11,7);
                                       if(!_loc11_)
                                       {
                                          _loc8_.endFill();
                                          if(_loc10_)
                                          {
                                             filters = [new DropShadowFilter(2,90,0,0.4)];
                                             if(!(_loc11_ && Boolean(param2)))
                                             {
                                                break;
                                             }
                                             addr01a5:
                                             _loc8_.moveTo(9,param2 - 13);
                                             if(!_loc11_)
                                             {
                                                _loc8_.lineTo(15,param2 - 2);
                                                if(!(_loc11_ && Boolean(this)))
                                                {
                                                   _loc8_.lineTo(21,param2 - 13);
                                                   addr01d1:
                                                   if(!(_loc10_ || Boolean(_loc3_)))
                                                   {
                                                      break;
                                                   }
                                                   _loc8_.moveTo(9,param2 - 13);
                                                   if(_loc10_)
                                                   {
                                                      addr0209:
                                                      _loc8_.endFill();
                                                      if(_loc11_ && Boolean(param1))
                                                      {
                                                         break;
                                                      }
                                                      addr021d:
                                                      filters = [new DropShadowFilter(2,90,0,0.4)];
                                                      if(!_loc11_)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr028b:
                                                      _loc8_.lineTo(15,0);
                                                      if(_loc10_ || Boolean(param2))
                                                      {
                                                         addr02a3:
                                                         _loc8_.lineTo(21,11);
                                                         if(_loc10_)
                                                         {
                                                            addr02b3:
                                                            _loc8_.moveTo(10,11);
                                                            if(!_loc10_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         _loc8_.endFill();
                                                         if(!_loc11_)
                                                         {
                                                            addr02cf:
                                                            filters = [new DropShadowFilter(2,90,0,0.4)];
                                                            if(_loc10_ || Boolean(this))
                                                            {
                                                            }
                                                         }
                                                         break;
                                                      }
                                                   }
                                                   §§goto(addr02b3);
                                                }
                                                else
                                                {
                                                   addr027b:
                                                   _loc8_.moveTo(9,11);
                                                   if(_loc11_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                §§goto(addr028b);
                                             }
                                             §§goto(addr01d1);
                                          }
                                       }
                                       §§goto(addr02cf);
                                    }
                                    §§goto(addr02a3);
                                 }
                                 §§goto(addr02b3);
                              }
                              §§goto(addr0209);
                           }
                           §§goto(addr021d);
                        case 2:
                           drawRoundRect(0,0,param1,param2 - 13,3,_loc6_,_loc5_);
                           if(_loc10_)
                           {
                              _loc8_.beginFill(_loc6_,_loc5_);
                              if(_loc11_ && Boolean(param1))
                              {
                                 break;
                              }
                              §§goto(addr01a5);
                           }
                           §§goto(addr0209);
                        case 3:
                           drawRoundRect(0,11,param1,param2 - 13,3,_loc6_,_loc5_);
                           if(_loc10_ || Boolean(this))
                           {
                              _loc8_.beginFill(_loc6_,_loc5_);
                              if(!(_loc10_ || Boolean(_loc3_)))
                              {
                                 break;
                              }
                              §§goto(addr027b);
                           }
                           §§goto(addr028b);
                        default:
                           ToolTip(parent).setStyle("styleName","fontABold");
                           if(_loc11_)
                           {
                           }
                     }
                     return;
                  }
                  §§goto(addr03d8);
               }
               §§goto(addr03d6);
            }
            §§goto(addr03dc);
         }
         §§goto(addr002e);
      }
      
      public function layoutBackgroundImage() : void
      {
      }
      
      public function get backgroundImageBounds() : Rectangle
      {
         return null;
      }
      
      public function get hasBackgroundImage() : Boolean
      {
         return false;
      }
      
      public function set backgroundImageBounds(param1:Rectangle) : void
      {
      }
   }
}

