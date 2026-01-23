package net.bigpoint.cityrama.view.common.components
{
   import flash.display.Stage;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   import mx.core.FlexGlobals;
   import mx.core.UIComponent;
   import net.bigpoint.cityrama.view.common.skins.MultiStateMiniButtonSkin;
   import net.bigpoint.cityrama.view.common.skins.MultistateSmallButtonSkin;
   
   public class MultistateButton extends ConfirmablePlusButton
   {
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         _skinParts = {
            "iconLeft":true,
            "iconRight":true,
            "sparkle":false,
            "plusIcon":false,
            "labelDisplay":false,
            "iconDisplay":false
         };
      }
      
      public var iconLeft:BriskImageDynaLib;
      
      public var iconRight:BriskImageDynaLib;
      
      public var sparkle:BriskImageDynaLib;
      
      private var _libNameLeft:String;
      
      private var _libNameRight:String;
      
      private var _imageNameLeft:String;
      
      private var _imageNameRight:String;
      
      private var _showSparkle:Boolean = false;
      
      private var _useSmallSkin:Boolean = false;
      
      private var _useMiniSkin:Boolean = false;
      
      public function MultistateButton()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
            if(!_loc1_)
            {
               addr001e:
               this.focusEnabled = false;
            }
            return;
         }
         §§goto(addr001e);
      }
      
      public function get imageNameLeft() : String
      {
         return this._imageNameLeft;
      }
      
      public function set imageNameLeft(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._imageNameLeft = param1;
            if(!(_loc3_ && _loc2_))
            {
               invalidateProperties();
            }
         }
      }
      
      public function get libNameLeft() : String
      {
         return this._libNameLeft;
      }
      
      public function set libNameLeft(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._libNameLeft = param1;
            if(!_loc2_)
            {
               addr0023:
               invalidateProperties();
            }
            return;
         }
         §§goto(addr0023);
      }
      
      public function get imageNameRight() : String
      {
         return this._imageNameRight;
      }
      
      public function set imageNameRight(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._imageNameRight = param1;
            if(_loc3_)
            {
               invalidateProperties();
            }
         }
      }
      
      public function get libNameRight() : String
      {
         return this._libNameRight;
      }
      
      public function set libNameRight(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._libNameRight = param1;
         }
      }
      
      override public function set label(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.label = param1;
            if(!_loc2_)
            {
               invalidateProperties();
            }
         }
      }
      
      override public function styleChanged(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.styleChanged(param1);
            if(_loc2_)
            {
               §§push(this.useSmallSkin);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        setStyle("skinClass",MultistateSmallButtonSkin);
                        if(!(_loc2_ || _loc2_))
                        {
                           addr0075:
                           setStyle("skinClass",MultiStateMiniButtonSkin);
                        }
                        §§goto(addr0080);
                     }
                     §§goto(addr0075);
                  }
                  else
                  {
                     addr006c:
                     if(this.useMiniSkin)
                     {
                        if(_loc2_)
                        {
                           §§goto(addr0075);
                        }
                     }
                  }
                  §§goto(addr0080);
               }
               §§goto(addr006c);
            }
         }
         addr0080:
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.emphasized = false;
            if(_loc2_)
            {
               super.commitProperties();
               if(_loc2_ || _loc2_)
               {
                  §§push(this.iconLeft);
                  if(_loc2_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(this._libNameLeft);
                           if(!_loc3_)
                           {
                              §§push(§§pop());
                              if(_loc2_)
                              {
                                 var _temp_4:* = §§pop();
                                 §§push(_temp_4);
                                 §§push(_temp_4);
                                 if(_loc2_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc3_ && Boolean(this)))
                                       {
                                          §§pop();
                                          if(_loc2_ || _loc1_)
                                          {
                                             §§push(this._imageNameLeft);
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                §§push(§§pop());
                                                if(_loc2_ || _loc2_)
                                                {
                                                   addr00aa:
                                                   if(§§pop())
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         addr00b3:
                                                         §§push(this.iconLeft);
                                                         if(_loc2_)
                                                         {
                                                            §§push(this.iconLeft);
                                                            if(!_loc3_)
                                                            {
                                                               §§push(true);
                                                               if(_loc2_ || _loc2_)
                                                               {
                                                                  var _temp_10:* = §§pop();
                                                                  §§push(_temp_10);
                                                                  §§push(_temp_10);
                                                                  if(!_loc3_)
                                                                  {
                                                                     var _loc1_:* = §§pop();
                                                                     if(_loc2_ || _loc2_)
                                                                     {
                                                                        §§pop().visible = §§pop();
                                                                        if(!(_loc3_ && _loc1_))
                                                                        {
                                                                           §§push(_loc1_);
                                                                           if(_loc2_ || _loc2_)
                                                                           {
                                                                              if(!(_loc3_ && _loc1_))
                                                                              {
                                                                                 §§pop().includeInLayout = §§pop();
                                                                                 if(_loc2_ || _loc2_)
                                                                                 {
                                                                                    addr0122:
                                                                                    §§push(this.iconLeft);
                                                                                    if(!(_loc3_ && _loc2_))
                                                                                    {
                                                                                       addr0133:
                                                                                       §§push(this._libNameLeft);
                                                                                       if(_loc2_ || _loc3_)
                                                                                       {
                                                                                          §§pop().dynaLibName = §§pop();
                                                                                          if(!(_loc3_ && _loc2_))
                                                                                          {
                                                                                             addr0153:
                                                                                             §§push(this.iconLeft);
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                addr0160:
                                                                                                §§pop().dynaBmpSourceName = this._imageNameLeft;
                                                                                                addr015c:
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   addr018a:
                                                                                                   §§push(this.iconRight);
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            §§push(this._libNameRight);
                                                                                                            if(_loc2_ || _loc1_)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  var _temp_20:* = §§pop();
                                                                                                                  addr01c2:
                                                                                                                  §§push(_temp_20);
                                                                                                                  if(_temp_20)
                                                                                                                  {
                                                                                                                     if(_loc2_)
                                                                                                                     {
                                                                                                                        addr01cb:
                                                                                                                        §§pop();
                                                                                                                        if(_loc2_ || _loc3_)
                                                                                                                        {
                                                                                                                           addr01de:
                                                                                                                           addr01dd:
                                                                                                                           addr01d9:
                                                                                                                           if(Boolean(this._imageNameRight))
                                                                                                                           {
                                                                                                                              if(_loc2_)
                                                                                                                              {
                                                                                                                                 §§push(this.iconRight);
                                                                                                                                 if(_loc2_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    addr01f8:
                                                                                                                                    §§push(this.iconRight);
                                                                                                                                    if(!(_loc3_ && Boolean(this)))
                                                                                                                                    {
                                                                                                                                       §§push(true);
                                                                                                                                       if(!(_loc3_ && Boolean(this)))
                                                                                                                                       {
                                                                                                                                          var _temp_25:* = §§pop();
                                                                                                                                          §§push(_temp_25);
                                                                                                                                          §§push(_temp_25);
                                                                                                                                          if(_loc2_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             _loc1_ = §§pop();
                                                                                                                                             if(_loc2_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                §§pop().visible = §§pop();
                                                                                                                                                if(_loc2_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc1_);
                                                                                                                                                   if(_loc2_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc2_ || Boolean(this))
                                                                                                                                                      {
                                                                                                                                                         §§pop().includeInLayout = §§pop();
                                                                                                                                                         if(!(_loc3_ && _loc1_))
                                                                                                                                                         {
                                                                                                                                                            §§push(this.iconRight);
                                                                                                                                                            if(!(_loc3_ && Boolean(this)))
                                                                                                                                                            {
                                                                                                                                                               §§push(this._libNameRight);
                                                                                                                                                               if(!_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().dynaLibName = §§pop();
                                                                                                                                                                  if(_loc2_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.iconRight);
                                                                                                                                                                     if(_loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        addr02a4:
                                                                                                                                                                        §§pop().dynaBmpSourceName = this._imageNameRight;
                                                                                                                                                                        addr02a0:
                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           addr02ce:
                                                                                                                                                                           if(label != "")
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc3_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 addr02e4:
                                                                                                                                                                                 if(labelDisplay)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr02f0:
                                                                                                                                                                                       UIComponent(labelDisplay).includeInLayout = true;
                                                                                                                                                                                       if(_loc2_ || Boolean(this))
                                                                                                                                                                                       {
                                                                                                                                                                                          UIComponent(labelDisplay).visible = true;
                                                                                                                                                                                          if(_loc3_ && _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr0330:
                                                                                                                                                                                             UIComponent(labelDisplay).includeInLayout = false;
                                                                                                                                                                                             if(!(_loc3_ && Boolean(this)))
                                                                                                                                                                                             {
                                                                                                                                                                                                UIComponent(labelDisplay).visible = false;
                                                                                                                                                                                                §§goto(addr0348);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr037b);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           else if(labelDisplay)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr0330);
                                                                                                                                                                              }
                                                                                                                                                                              addr0348:
                                                                                                                                                                              if(!(_loc3_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 addr036f:
                                                                                                                                                                                 if(plusIcon)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr037b:
                                                                                                                                                                                       plusIcon.includeInLayout = plusIcon.visible = showPlus;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr038d);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr036f);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr038d);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        addr02ba:
                                                                                                                                                                        this.iconRight.visible = _loc1_ = false;
                                                                                                                                                                        addr02bf:
                                                                                                                                                                        §§pop().includeInLayout = _loc1_;
                                                                                                                                                                        addr02bd:
                                                                                                                                                                        addr02bc:
                                                                                                                                                                        if(_loc2_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr02ce);
                                                                                                                                                                        }
                                                                                                                                                                        addr02b9:
                                                                                                                                                                        addr02b8:
                                                                                                                                                                        addr02b7:
                                                                                                                                                                        addr02b3:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr02f0);
                                                                                                                                                                  }
                                                                                                                                                                  addr038d:
                                                                                                                                                                  return;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr02a4);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr02a0);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr037b);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr02bf);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr02bd);
                                                                                                                                                }
                                                                                                                                                §§goto(addr02bc);
                                                                                                                                             }
                                                                                                                                             §§goto(addr02ba);
                                                                                                                                          }
                                                                                                                                          §§goto(addr02b9);
                                                                                                                                       }
                                                                                                                                       §§goto(addr02b8);
                                                                                                                                    }
                                                                                                                                    §§goto(addr02b7);
                                                                                                                                 }
                                                                                                                                 §§goto(addr02b3);
                                                                                                                              }
                                                                                                                              §§goto(addr0348);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push(this.iconRight);
                                                                                                                           }
                                                                                                                           §§goto(addr02b3);
                                                                                                                        }
                                                                                                                        §§goto(addr037b);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr01de);
                                                                                                            }
                                                                                                            §§goto(addr01dd);
                                                                                                         }
                                                                                                         §§goto(addr02e4);
                                                                                                      }
                                                                                                      §§goto(addr02ce);
                                                                                                   }
                                                                                                   §§goto(addr01f8);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr0176:
                                                                                                this.iconLeft.visible = _loc1_ = false;
                                                                                                addr017b:
                                                                                                §§pop().includeInLayout = _loc1_;
                                                                                                addr0179:
                                                                                                addr0178:
                                                                                                if(!(_loc3_ && Boolean(this)))
                                                                                                {
                                                                                                   §§goto(addr018a);
                                                                                                }
                                                                                                addr0175:
                                                                                                addr0174:
                                                                                                addr0173:
                                                                                                addr016f:
                                                                                             }
                                                                                             §§goto(addr02ce);
                                                                                          }
                                                                                          §§goto(addr01d9);
                                                                                       }
                                                                                       §§goto(addr0160);
                                                                                    }
                                                                                    §§goto(addr015c);
                                                                                 }
                                                                                 §§goto(addr018a);
                                                                              }
                                                                              §§goto(addr017b);
                                                                           }
                                                                           §§goto(addr0179);
                                                                        }
                                                                        §§goto(addr0178);
                                                                     }
                                                                     §§goto(addr0176);
                                                                  }
                                                                  §§goto(addr0175);
                                                               }
                                                               §§goto(addr0174);
                                                            }
                                                            §§goto(addr0173);
                                                         }
                                                         §§goto(addr0133);
                                                      }
                                                      §§goto(addr0330);
                                                   }
                                                   else
                                                   {
                                                      §§push(this.iconLeft);
                                                   }
                                                   §§goto(addr016f);
                                                }
                                                §§goto(addr01cb);
                                             }
                                             §§goto(addr01dd);
                                          }
                                          §§goto(addr00b3);
                                       }
                                    }
                                    §§goto(addr00aa);
                                 }
                                 §§goto(addr01c2);
                              }
                              §§goto(addr01cb);
                           }
                           §§goto(addr01dd);
                        }
                        §§goto(addr02f0);
                     }
                     §§goto(addr018a);
                  }
                  §§goto(addr015c);
               }
               §§goto(addr018a);
            }
            §§goto(addr0122);
         }
         §§goto(addr0153);
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super.partAdded(param1,param2);
            if(!_loc3_)
            {
               if(param2 == this.iconLeft)
               {
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     §§push(this._libNameLeft);
                     if(!_loc3_)
                     {
                        §§push(§§pop());
                        if(_loc4_ || Boolean(param1))
                        {
                           var _temp_4:* = §§pop();
                           §§push(_temp_4);
                           if(_temp_4)
                           {
                              if(_loc4_ || Boolean(param1))
                              {
                                 addr0065:
                                 §§pop();
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    addr0077:
                                    §§push(Boolean(this._imageNameLeft));
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       §§goto(addr0085);
                                    }
                                    else
                                    {
                                       addr01a4:
                                       if(§§pop())
                                       {
                                          if(_loc4_)
                                          {
                                             §§goto(addr01ae);
                                          }
                                          §§goto(addr01cd);
                                       }
                                       else
                                       {
                                          §§push(this.sparkle);
                                          if(!_loc3_)
                                          {
                                             §§push(false);
                                             if(_loc4_)
                                             {
                                                §§goto(addr020d);
                                             }
                                             §§goto(addr0222);
                                          }
                                       }
                                    }
                                    §§goto(addr0221);
                                 }
                                 §§goto(addr01ae);
                              }
                           }
                           addr0085:
                           if(§§pop())
                           {
                              if(_loc4_)
                              {
                                 §§push(this.iconLeft);
                                 if(!_loc3_)
                                 {
                                    §§push(true);
                                    if(!_loc3_)
                                    {
                                       §§pop().includeInLayout = §§pop();
                                       if(_loc4_ || Boolean(this))
                                       {
                                          §§push(this.iconLeft);
                                          if(!_loc3_)
                                          {
                                             addr00b8:
                                             §§pop().visible = true;
                                             if(_loc4_)
                                             {
                                                addr00c0:
                                                §§push(this.iconLeft);
                                                if(_loc4_)
                                                {
                                                   addr00ca:
                                                   §§push(this._libNameLeft);
                                                   if(!_loc3_)
                                                   {
                                                      §§pop().dynaLibName = §§pop();
                                                      if(_loc4_ || Boolean(param1))
                                                      {
                                                         §§goto(addr00eb);
                                                      }
                                                      §§goto(addr01cd);
                                                   }
                                                   addr00eb:
                                                   this.iconLeft.dynaBmpSourceName = this._imageNameLeft;
                                                   §§goto(addr00e7);
                                                }
                                                addr00e7:
                                                if(_loc3_ && Boolean(this))
                                                {
                                                   addr01ae:
                                                   §§push(this.sparkle);
                                                   if(!_loc3_)
                                                   {
                                                      §§push(true);
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         §§pop().visible = §§pop();
                                                         if(!_loc3_)
                                                         {
                                                            addr01cd:
                                                            §§push(this.sparkle);
                                                            if(_loc4_)
                                                            {
                                                               §§push(true);
                                                               if(_loc4_ || Boolean(this))
                                                               {
                                                                  §§pop().includeInLayout = §§pop();
                                                                  if(_loc3_)
                                                                  {
                                                                     addr0222:
                                                                     this.sparkle.includeInLayout = false;
                                                                     addr021d:
                                                                     addr0221:
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr020d:
                                                                  §§pop().visible = §§pop();
                                                                  if(_loc4_ || Boolean(param2))
                                                                  {
                                                                     §§goto(addr021d);
                                                                  }
                                                               }
                                                               §§goto(addr0224);
                                                            }
                                                            §§goto(addr0221);
                                                         }
                                                         §§goto(addr0224);
                                                      }
                                                      §§goto(addr020d);
                                                   }
                                                   §§goto(addr0221);
                                                }
                                             }
                                             §§goto(addr0224);
                                          }
                                          §§goto(addr00ca);
                                       }
                                       else
                                       {
                                          addr0127:
                                          UIComponent(labelDisplay).includeInLayout = true;
                                          if(!(_loc3_ && Boolean(param2)))
                                          {
                                             UIComponent(labelDisplay).visible = true;
                                             if(_loc4_)
                                             {
                                             }
                                          }
                                       }
                                       §§goto(addr0224);
                                    }
                                    §§goto(addr00b8);
                                 }
                                 §§goto(addr00e7);
                              }
                              §§goto(addr021d);
                           }
                           §§goto(addr0224);
                        }
                        §§goto(addr0065);
                     }
                     §§goto(addr0077);
                  }
                  else
                  {
                     §§goto(addr0118);
                  }
               }
               else if(param2 == labelDisplay)
               {
                  if(_loc4_)
                  {
                     addr0118:
                     if(label != "")
                     {
                        if(_loc4_)
                        {
                           §§goto(addr0127);
                        }
                     }
                     else
                     {
                        UIComponent(labelDisplay).includeInLayout = false;
                        if(!(_loc3_ && Boolean(this)))
                        {
                           UIComponent(labelDisplay).visible = false;
                           if(!(_loc4_ || Boolean(this)))
                           {
                              addr01a0:
                              §§goto(addr01a4);
                              §§push(this._showSparkle);
                           }
                           §§goto(addr0224);
                        }
                        §§goto(addr021d);
                     }
                     §§goto(addr0224);
                  }
                  §§goto(addr0127);
               }
               else if(param2 == this.sparkle)
               {
                  if(_loc4_ || _loc3_)
                  {
                     §§goto(addr01a0);
                  }
                  §§goto(addr021d);
               }
               addr0224:
               return;
            }
            §§goto(addr00c0);
         }
         §§goto(addr021d);
      }
      
      public function get showSparkle() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this._showSparkle);
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop());
               if(!(_loc1_ && Boolean(this)))
               {
                  var _temp_4:* = §§pop();
                  §§goto(addr004e);
               }
               §§goto(addr0049);
            }
            addr004e:
            §§push(_temp_4);
            if(_temp_4)
            {
               if(!_loc1_)
               {
                  addr0049:
                  §§pop();
                  addr004a:
                  return !_showPlus;
               }
            }
         }
         §§goto(addr004a);
      }
      
      public function set showSparkle(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && param1))
         {
            this._showSparkle = param1;
            if(_loc3_)
            {
               invalidateProperties();
            }
         }
      }
      
      public function get useSmallSkin() : Boolean
      {
         return this._useSmallSkin;
      }
      
      public function set useSmallSkin(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._useSmallSkin = param1;
         }
      }
      
      public function get useMiniSkin() : Boolean
      {
         return this._useMiniSkin;
      }
      
      public function set useMiniSkin(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._useMiniSkin = param1;
         }
      }
      
      override protected function keyDownHandler(param1:KeyboardEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Stage = null;
         if(_loc4_ || Boolean(param1))
         {
            if(param1.keyCode == Keyboard.SPACE)
            {
               if(_loc4_)
               {
                  this.removeEventListener(KeyboardEvent.KEY_DOWN,this.keyDownHandler);
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0067:
                     this.removeEventListener(KeyboardEvent.KEY_UP,keyUpHandler);
                     if(!(_loc3_ && Boolean(_loc2_)))
                     {
                        §§goto(addr0082);
                     }
                  }
                  §§goto(addr00d2);
               }
               addr0082:
               _loc2_ = FlexGlobals.topLevelApplication.stage as Stage;
               if(!_loc3_)
               {
                  _loc2_.focus = null;
                  if(_loc4_ || Boolean(this))
                  {
                     _loc2_.dispatchEvent(param1);
                     if(_loc3_ && Boolean(this))
                     {
                        §§goto(addr00cb);
                     }
                  }
               }
               return;
            }
            addr00cb:
            super.keyDownHandler(param1);
            addr00d2:
            return;
         }
         §§goto(addr0067);
      }
      
      override public function set showPlus(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            super.showPlus = param1;
            if(_loc2_ || Boolean(this))
            {
               skin.invalidateProperties();
            }
         }
      }
   }
}

