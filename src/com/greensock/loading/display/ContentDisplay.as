package com.greensock.loading.display
{
   import com.greensock.loading.core.LoaderItem;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   
   public class ContentDisplay extends Sprite
   {
      
      protected static var _transformProps:Object;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || ContentDisplay)
      {
         _transformProps = {
            "x":1,
            "y":1,
            "z":1,
            "rotationX":1,
            "rotationY":1,
            "rotationZ":1,
            "scaleX":1,
            "scaleY":1,
            "rotation":1,
            "alpha":1,
            "visible":true,
            "blendMode":"normal",
            "centerRegistration":false,
            "crop":false,
            "scaleMode":"stretch",
            "hAlign":"center",
            "vAlign":"center"
         };
      }
      
      protected var _scaleMode:String = "stretch";
      
      protected var _fitWidth:Number;
      
      protected var _fitHeight:Number;
      
      protected var _hAlign:String = "center";
      
      public var data:*;
      
      protected var _loader:LoaderItem;
      
      protected var _centerRegistration:Boolean;
      
      protected var _vAlign:String = "center";
      
      protected var _rawContent:DisplayObject;
      
      protected var _cropContainer:Sprite;
      
      public var gcProtect:*;
      
      protected var _bgAlpha:Number = 0;
      
      protected var _bgColor:uint;
      
      protected var _crop:Boolean;
      
      public function ContentDisplay(param1:LoaderItem)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            super();
            if(!(_loc3_ && _loc2_))
            {
               addr003d:
               this.loader = param1;
            }
            return;
         }
         §§goto(addr003d);
      }
      
      public function get scaleMode() : String
      {
         return _scaleMode;
      }
      
      public function get crop() : Boolean
      {
         return _crop;
      }
      
      public function get loader() : LoaderItem
      {
         return _loader;
      }
      
      public function get fitHeight() : Number
      {
         return _fitHeight;
      }
      
      public function get bgColor() : uint
      {
         return _bgColor;
      }
      
      public function dispose(param1:Boolean = true, param2:Boolean = true) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && param2))
         {
            this.rawContent = null;
            if(!(_loc4_ && _loc3_))
            {
               if(this.parent != null)
               {
                  if(_loc3_ || param2)
                  {
                     this.parent.removeChild(this);
                     if(!(_loc4_ && param2))
                     {
                        addr006c:
                        this.gcProtect = null;
                        if(_loc3_)
                        {
                           §§push(_loader);
                           if(_loc3_)
                           {
                              if(§§pop() != null)
                              {
                                 if(!_loc4_)
                                 {
                                    addr008a:
                                    §§push(param1);
                                    if(!_loc4_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc3_)
                                          {
                                             addr009a:
                                             §§push(_loader);
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                §§pop().unload();
                                                if(_loc3_)
                                                {
                                                   §§goto(addr00bf);
                                                }
                                                §§goto(addr00ca);
                                             }
                                             §§goto(addr00cd);
                                          }
                                          §§goto(addr00ca);
                                       }
                                       addr00bf:
                                       §§goto(addr00c0);
                                    }
                                    addr00c0:
                                    if(param2)
                                    {
                                       if(!_loc4_)
                                       {
                                          addr00cd:
                                          _loader.dispose(false);
                                          addr00ca:
                                          if(_loc3_ || _loc3_)
                                          {
                                             addr00df:
                                             _loader = null;
                                          }
                                          §§goto(addr00e6);
                                       }
                                       §§goto(addr00df);
                                    }
                                    §§goto(addr00e6);
                                 }
                              }
                              addr00e6:
                              return;
                           }
                           §§goto(addr00cd);
                        }
                        §§goto(addr008a);
                     }
                     §§goto(addr00ca);
                  }
               }
               §§goto(addr006c);
            }
            §§goto(addr009a);
         }
         §§goto(addr006c);
      }
      
      public function set scaleMode(param1:String) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            §§push(param1 == "none");
            if(_loc3_)
            {
               var _temp_1:* = §§pop();
               §§push(_temp_1);
               if(_temp_1)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     §§pop();
                     if(_loc3_ || _loc2_)
                     {
                        addr005b:
                        §§push(_rawContent == null);
                        if(!_loc4_)
                        {
                           §§push(!§§pop());
                        }
                        if(§§pop())
                        {
                           if(!_loc4_)
                           {
                              _rawContent.scaleX = _rawContent.scaleY = 1;
                              if(_loc3_)
                              {
                                 addr0088:
                                 _scaleMode = param1;
                                 if(_loc3_ || Boolean(this))
                                 {
                                    addr009c:
                                    _update();
                                 }
                              }
                              return;
                           }
                           §§goto(addr009c);
                        }
                     }
                     §§goto(addr0088);
                  }
               }
            }
            §§goto(addr005b);
         }
         §§goto(addr0088);
      }
      
      public function set crop(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && param1))
         {
            _crop = param1;
            if(_loc2_ || Boolean(this))
            {
               addr003f:
               _update();
            }
            return;
         }
         §§goto(addr003f);
      }
      
      public function set loader(param1:LoaderItem) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(!(_loc6_ && Boolean(_loc3_)))
         {
            _loader = param1;
            if(!_loc6_)
            {
               §§push(_loader);
               if(_loc7_)
               {
                  if(§§pop() == null)
                  {
                     if(!(_loc6_ && Boolean(this)))
                     {
                        return;
                     }
                  }
                  else
                  {
                     addr0065:
                     if(!_loader.hasOwnProperty("setContentDisplay"))
                     {
                        if(_loc7_ || Boolean(param1))
                        {
                           throw new Error("Incompatible loader used for a ContentDisplay");
                        }
                     }
                     addr0098:
                     this.name = _loader.name;
                  }
                  var _loc4_:* = 0;
                  var _loc5_:* = _transformProps;
                  for(_loc4_ in _loc5_)
                  {
                     §§push(_loc4_);
                     if(!_loc6_)
                     {
                        _loc3_ = §§pop();
                        if(!(_loc6_ && Boolean(this)))
                        {
                           addr00cd:
                           if(!(_loc3_ in _loader.vars))
                           {
                              continue;
                           }
                           if(_loc6_ && Boolean(_loc2_))
                           {
                              continue;
                           }
                           _loc2_ = typeof _transformProps[_loc3_];
                           if(_loc6_ && Boolean(this))
                           {
                              continue;
                           }
                        }
                        §§push(this);
                        §§push(_loc3_);
                        if(!(_loc6_ && Boolean(_loc3_)))
                        {
                           §§push(_loc2_);
                           if(_loc7_ || Boolean(this))
                           {
                              §§push("number");
                              if(_loc7_)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    addr016f:
                                    §§pop()[§§pop()] = _loc7_ ? Number(_loader.vars[_loc3_]) : String(_loader.vars[_loc3_]);
                                    continue;
                                 }
                                 addr0147:
                                 addr0144:
                                 if(_loc2_ == "string")
                                 {
                                    §§goto(addr014b);
                                 }
                                 else
                                 {
                                    §§push(Boolean(_loader.vars[_loc3_]));
                                 }
                                 §§goto(addr016f);
                                 §§goto(addr014b);
                              }
                              §§goto(addr0147);
                           }
                           §§goto(addr0144);
                        }
                        §§goto(addr014b);
                     }
                     §§goto(addr00cd);
                  }
                  if(_loc7_)
                  {
                     _bgColor = uint(_loader.vars.bgColor);
                     if(_loc7_ || Boolean(param1))
                     {
                        §§push(§§findproperty(_bgAlpha));
                        if(!(_loc6_ && Boolean(this)))
                        {
                           §§push("bgAlpha");
                           if(!(_loc6_ && Boolean(param1)))
                           {
                              §§push(_loader);
                              if(!(_loc6_ && Boolean(param1)))
                              {
                                 §§push(§§pop() in §§pop().vars);
                                 if(!(_loc6_ && Boolean(_loc3_)))
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          §§push(Number(_loader.vars.bgAlpha));
                                          if(_loc7_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          addr022a:
                                          §§push(1);
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop());
                                             if(_loc6_)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             addr023f:
                                             §§push(§§pop());
                                          }
                                       }
                                       §§pop()._bgAlpha = §§pop();
                                       if(!_loc6_)
                                       {
                                          addr0249:
                                          §§push(§§findproperty(_fitWidth));
                                          if(_loc7_ || Boolean(param1))
                                          {
                                             if("fitWidth" in _loader.vars)
                                             {
                                                addr0268:
                                                §§push(Number(_loader.vars.fitWidth));
                                                if(_loc7_ || Boolean(_loc2_))
                                                {
                                                }
                                             }
                                             else
                                             {
                                                §§push(Number(_loader.vars.width));
                                             }
                                             §§pop()._fitWidth = §§pop();
                                             if(!_loc6_)
                                             {
                                                §§push(§§findproperty(_fitHeight));
                                                if(_loc7_)
                                                {
                                                   if("fitHeight" in _loader.vars)
                                                   {
                                                      addr02ba:
                                                      §§push(Number(_loader.vars.fitHeight));
                                                      if(_loc6_)
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(Number(_loader.vars.height));
                                                   }
                                                   §§pop()._fitHeight = §§pop();
                                                   if(_loc7_ || Boolean(this))
                                                   {
                                                      _update();
                                                      if(_loc7_ || Boolean(this))
                                                      {
                                                         addr030a:
                                                         §§push(_loader);
                                                         if(_loc7_)
                                                         {
                                                            if(§§pop().vars.container is DisplayObjectContainer)
                                                            {
                                                               if(!(_loc6_ && Boolean(_loc2_)))
                                                               {
                                                                  §§push(_loader);
                                                                  if(_loc7_ || Boolean(_loc2_))
                                                                  {
                                                                     addr0340:
                                                                     (§§pop().vars.container as DisplayObjectContainer).addChild(this);
                                                                     if(_loc7_)
                                                                     {
                                                                        addr0355:
                                                                        §§push(_loader);
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(§§pop().content != this)
                                                                           {
                                                                              if(_loc7_ || Boolean(param1))
                                                                              {
                                                                                 addr0384:
                                                                                 (_loader as Object).setContentDisplay(this);
                                                                                 addr0381:
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    addr0393:
                                                                                    this.rawContent = (_loader as Object).rawContent;
                                                                                 }
                                                                              }
                                                                              §§goto(addr03a1);
                                                                           }
                                                                           §§goto(addr0393);
                                                                        }
                                                                        §§goto(addr0384);
                                                                     }
                                                                     §§goto(addr0381);
                                                                  }
                                                                  §§goto(addr0384);
                                                               }
                                                               addr03a1:
                                                               return;
                                                            }
                                                            §§goto(addr0355);
                                                         }
                                                         §§goto(addr0340);
                                                      }
                                                      §§goto(addr0393);
                                                   }
                                                   §§goto(addr0355);
                                                }
                                                §§goto(addr02ba);
                                             }
                                             §§goto(addr0381);
                                          }
                                          §§goto(addr0268);
                                       }
                                       §§goto(addr030a);
                                    }
                                    else
                                    {
                                       addr0226:
                                       addr0222:
                                       addr021f:
                                       if("bgColor" in _loader.vars)
                                       {
                                          §§goto(addr022a);
                                       }
                                       else
                                       {
                                          §§push(0);
                                       }
                                       §§goto(addr023f);
                                    }
                                 }
                                 §§goto(addr0226);
                              }
                              §§goto(addr0222);
                           }
                           §§goto(addr021f);
                        }
                        §§goto(addr022a);
                     }
                     §§goto(addr0249);
                  }
                  §§goto(addr0393);
               }
               §§goto(addr0065);
            }
         }
         §§goto(addr0098);
      }
      
      public function get centerRegistration() : Boolean
      {
         return _centerRegistration;
      }
      
      public function get vAlign() : String
      {
         return _vAlign;
      }
      
      public function set fitHeight(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            _fitHeight = param1;
            if(_loc3_)
            {
               addr0025:
               _update();
            }
            return;
         }
         §§goto(addr0025);
      }
      
      public function get rawContent() : *
      {
         return _rawContent;
      }
      
      public function set bgAlpha(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            _bgAlpha = param1;
            if(_loc2_)
            {
               _update();
            }
         }
      }
      
      public function get fitWidth() : Number
      {
         return _fitWidth;
      }
      
      public function get bgAlpha() : Number
      {
         return _bgAlpha;
      }
      
      public function set bgColor(param1:uint) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            _bgColor = param1;
            if(!(_loc2_ && Boolean(param1)))
            {
               addr0041:
               _update();
            }
            return;
         }
         §§goto(addr0041);
      }
      
      public function set centerRegistration(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            _centerRegistration = param1;
            if(!(_loc2_ && Boolean(this)))
            {
               _update();
            }
         }
      }
      
      public function set rawContent(param1:*) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || param1)
         {
            §§push(_rawContent == null);
            if(!_loc2_)
            {
               §§push(!§§pop());
               if(_loc3_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  §§push(_temp_3);
                  if(!(_loc2_ && param1))
                  {
                     if(§§pop())
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           §§pop();
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr005c:
                              §§push(_rawContent == param1);
                              if(!_loc2_)
                              {
                                 §§push(!§§pop());
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    addr0074:
                                    if(§§pop())
                                    {
                                       if(!_loc2_)
                                       {
                                          if(_rawContent.parent == this)
                                          {
                                             if(_loc3_)
                                             {
                                                removeChild(_rawContent);
                                                if(!_loc3_)
                                                {
                                                   addr0109:
                                                   _cropContainer.removeChild(_rawContent);
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      removeChild(_cropContainer);
                                                      if(!(_loc2_ && Boolean(this)))
                                                      {
                                                         _cropContainer = null;
                                                         if(!_loc2_)
                                                         {
                                                            addr0143:
                                                            _rawContent = param1 as DisplayObject;
                                                            if(!_loc2_)
                                                            {
                                                               addr0152:
                                                               if(_rawContent == null)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     return;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr0165:
                                                                  §§push(_rawContent.parent == null);
                                                                  if(_loc3_)
                                                                  {
                                                                     var _temp_10:* = §§pop();
                                                                     §§push(_temp_10);
                                                                     §§push(_temp_10);
                                                                     if(_loc3_ || _loc2_)
                                                                     {
                                                                        addr0180:
                                                                        if(!§§pop())
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              addr0189:
                                                                              §§pop();
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§push(_rawContent.parent == this);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    addr019c:
                                                                                    §§push(!§§pop());
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       addr01a2:
                                                                                       var _temp_12:* = §§pop();
                                                                                       addr01a3:
                                                                                       §§push(_temp_12);
                                                                                       if(_temp_12)
                                                                                       {
                                                                                          if(_loc3_ || Boolean(this))
                                                                                          {
                                                                                             addr01b4:
                                                                                             §§pop();
                                                                                             if(_loc3_ || _loc2_)
                                                                                             {
                                                                                                addr01e7:
                                                                                                addr01c2:
                                                                                                §§push(_rawContent.parent == _cropContainer);
                                                                                                if(_loc3_ || param1)
                                                                                                {
                                                                                                   addr01e6:
                                                                                                   §§push(!§§pop());
                                                                                                }
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      addr01f0:
                                                                                                      addChildAt(_rawContent as DisplayObject,0);
                                                                                                      if(_loc3_ || _loc2_)
                                                                                                      {
                                                                                                         addr020c:
                                                                                                         _update();
                                                                                                      }
                                                                                                      §§goto(addr0213);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr020c);
                                                                                             }
                                                                                             §§goto(addr0213);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr01e7);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr01e6);
                                                                              }
                                                                              §§goto(addr020c);
                                                                           }
                                                                           §§goto(addr019c);
                                                                        }
                                                                        §§goto(addr01e7);
                                                                     }
                                                                     §§goto(addr01a3);
                                                                  }
                                                                  §§goto(addr019c);
                                                               }
                                                            }
                                                            §§goto(addr0213);
                                                         }
                                                         §§goto(addr0165);
                                                      }
                                                      §§goto(addr0213);
                                                   }
                                                   §§goto(addr01f0);
                                                }
                                                §§goto(addr0143);
                                             }
                                             §§goto(addr020c);
                                          }
                                          else
                                          {
                                             §§push(_cropContainer == null);
                                             if(_loc3_ || param1)
                                             {
                                                addr00b2:
                                                §§push(!§§pop());
                                                if(_loc3_)
                                                {
                                                   var _temp_18:* = §§pop();
                                                   §§push(_temp_18);
                                                   §§push(_temp_18);
                                                   if(!(_loc2_ && param1))
                                                   {
                                                      addr00c6:
                                                      if(§§pop())
                                                      {
                                                         if(_loc3_ || Boolean(this))
                                                         {
                                                            §§goto(addr00d7);
                                                         }
                                                         §§goto(addr01b4);
                                                      }
                                                      §§goto(addr0100);
                                                   }
                                                   §§goto(addr0180);
                                                }
                                                §§goto(addr01e7);
                                             }
                                          }
                                          §§goto(addr0189);
                                       }
                                       §§goto(addr0152);
                                    }
                                    §§goto(addr0143);
                                 }
                                 §§goto(addr00b2);
                              }
                              §§goto(addr0100);
                           }
                           §§goto(addr00dd);
                        }
                        §§goto(addr01e7);
                     }
                     §§goto(addr0074);
                  }
                  §§goto(addr00c6);
               }
               §§goto(addr00b2);
            }
            addr00d7:
            §§pop();
            if(_loc3_)
            {
               addr00dd:
               §§push(_rawContent.parent == _cropContainer);
               if(_loc3_ || param1)
               {
                  addr0100:
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        §§goto(addr0109);
                     }
                     §§goto(addr01c2);
                  }
                  §§goto(addr0143);
               }
               §§goto(addr01a2);
            }
            addr0213:
            return;
         }
         §§goto(addr005c);
      }
      
      public function set vAlign(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            _vAlign = param1;
            if(!(_loc3_ && Boolean(this)))
            {
               addr003d:
               _update();
            }
            return;
         }
         §§goto(addr003d);
      }
      
      protected function _update() : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1325
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function set fitWidth(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            _fitWidth = param1;
            if(_loc2_)
            {
               addr002b:
               _update();
            }
            return;
         }
         §§goto(addr002b);
      }
      
      public function set hAlign(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            _hAlign = param1;
            if(!_loc2_)
            {
               addr002c:
               _update();
            }
            return;
         }
         §§goto(addr002c);
      }
      
      public function get hAlign() : String
      {
         return _hAlign;
      }
   }
}

