package net.bigpoint.cityrama.view.userInterfaceInfoLayer.component
{
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.core.IFlexModuleFactory;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.HeaderComponent;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.skin.AbstractUIInfolayerComponentSkin;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.AbstractUIInfolayerContentVo;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.SkinnableContainer;
   
   public class AbstractUIInfolayerComponent extends SkinnableContainer
   {
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc2_))
      {
         _skinParts = {
            "backgroundGroup":true,
            "topInformation":true,
            "header":true,
            "headerIcon":true,
            "contentGroup":false
         };
      }
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public var backgroundGroup:Group;
      
      public var header:HeaderComponent;
      
      public var headerIcon:BriskImageDynaLib;
      
      public var topInformation:LocaLabel;
      
      protected var _data:AbstractUIInfolayerContentVo;
      
      protected var _dirty:Boolean;
      
      private var _skinDirty:Boolean;
      
      public function AbstractUIInfolayerComponent()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
            if(_loc1_)
            {
               mx_internal::_document = this;
            }
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var factory:IFlexModuleFactory;
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         factory = param1;
         if(!_loc3_)
         {
            super.moduleFactory = factory;
            if(!(_loc3_ && _loc2_))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     return;
                  }
               }
               this.__moduleFactoryInitialized = true;
               if(!(_loc3_ && Boolean(this)))
               {
                  if(!this.styleDeclaration)
                  {
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr008f:
                        this.styleDeclaration = new CSSStyleDeclaration(null,styleManager);
                        if(!_loc3_)
                        {
                           addr00a0:
                           this.styleDeclaration.defaultFactory = function():void
                           {
                              this.skinClass = AbstractUIInfolayerComponentSkin;
                           };
                        }
                        §§goto(addr00ab);
                     }
                  }
               }
               §§goto(addr00a0);
            }
            addr00ab:
            return;
         }
         §§goto(addr008f);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.initialize();
         }
      }
      
      public function set data(param1:AbstractUIInfolayerContentVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(!RandomUtilities.isEqual(this._data,param1))
            {
               if(!(_loc3_ && _loc2_))
               {
                  addr0042:
                  this._dirty = true;
                  if(!(_loc3_ && _loc2_))
                  {
                     this._data = param1;
                     if(_loc2_)
                     {
                        addr0069:
                        this._skinDirty = true;
                        if(_loc2_ || _loc2_)
                        {
                           addr007b:
                           invalidateProperties();
                        }
                     }
                     return;
                  }
               }
               §§goto(addr0069);
            }
            §§goto(addr007b);
         }
         §§goto(addr0042);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(this._dirty)
            {
               if(_loc2_)
               {
                  this._dirty = false;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0035:
                     §§push(this.header);
                     if(!(_loc3_ && Boolean(this)))
                     {
                        §§pop().label = this._data.headerString;
                        if(_loc2_ || _loc3_)
                        {
                           §§push(this.header);
                           if(!(_loc3_ && _loc3_))
                           {
                              §§push(§§pop().labelDisplay);
                              if(!_loc3_)
                              {
                                 §§pop().percentWidth = 80;
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr0093:
                                    §§push(this.header);
                                    if(!_loc3_)
                                    {
                                       addr009f:
                                       §§pop().labelDisplay.styleName = "UIInfolayerheader";
                                       if(!(_loc3_ && Boolean(this)))
                                       {
                                          §§goto(addr00b6);
                                       }
                                       §§goto(addr0124);
                                    }
                                    addr00b6:
                                    §§push(this.header);
                                    §§push(this.header);
                                    §§push(this._data.headerString == "");
                                    if(_loc2_ || Boolean(this))
                                    {
                                       §§push(!§§pop());
                                    }
                                    §§pop().includeInLayout = §§pop().visible = §§pop();
                                    if(!_loc3_)
                                    {
                                       addr00e0:
                                       if(this._data.headerIconDynaVo != null)
                                       {
                                          if(_loc2_)
                                          {
                                             §§goto(addr00ff);
                                          }
                                       }
                                       §§goto(addr011a);
                                    }
                                    addr00ff:
                                    this.headerIcon.briskDynaVo = this._data.headerIconDynaVo;
                                    if(_loc2_ || Boolean(this))
                                    {
                                       addr011a:
                                       super.commitProperties();
                                       if(_loc2_)
                                       {
                                          addr0124:
                                          this.updateSkin();
                                       }
                                    }
                                    §§goto(addr012a);
                                 }
                                 addr012a:
                                 return;
                              }
                              §§goto(addr009f);
                           }
                           §§goto(addr00b6);
                        }
                        §§goto(addr011a);
                     }
                     §§goto(addr00b6);
                  }
                  §§goto(addr0093);
               }
               §§goto(addr0035);
            }
            §§goto(addr011a);
         }
         §§goto(addr00e0);
      }
      
      protected function updateSkin() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(this._skinDirty);
            if(!(_loc3_ && Boolean(this)))
            {
               §§push(§§pop());
               if(!_loc3_)
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  if(_temp_2)
                  {
                     if(_loc2_)
                     {
                        §§pop();
                        if(_loc2_)
                        {
                           §§goto(addr0053);
                        }
                        §§goto(addr00de);
                     }
                  }
                  addr0053:
                  §§push(this._data == null);
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr0052:
                     §§push(!§§pop());
                  }
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        this._skinDirty = false;
                     }
                     addr00de:
                     var _loc1_:* = this._data.alignment;
                     if(!_loc3_)
                     {
                        §§push(AbstractUIInfolayerContentVo.ALIGN_TOP);
                        if(!_loc3_)
                        {
                           §§push(_loc1_);
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    §§push(0);
                                    if(_loc2_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr0193:
                                    §§push(3);
                                    if(_loc2_ || Boolean(_loc1_))
                                    {
                                    }
                                 }
                                 §§goto(addr01b2);
                              }
                              else
                              {
                                 §§push(AbstractUIInfolayerContentVo.ALIGN_BOTTOM);
                                 if(_loc2_)
                                 {
                                    addr0123:
                                    §§push(_loc1_);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc2_)
                                          {
                                             addr013a:
                                             §§push(1);
                                             if(_loc2_)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr0193);
                                          }
                                          §§goto(addr01b2);
                                       }
                                       else
                                       {
                                          §§push(AbstractUIInfolayerContentVo.ALIGN_RIGHT);
                                          if(_loc2_)
                                          {
                                             §§push(_loc1_);
                                             if(_loc2_ || Boolean(_loc1_))
                                             {
                                                addr015e:
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      §§push(2);
                                                      if(_loc3_ && Boolean(this))
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr0193);
                                                   }
                                                   §§goto(addr01b2);
                                                }
                                                else
                                                {
                                                   §§goto(addr018f);
                                                }
                                             }
                                             addr018f:
                                          }
                                          §§goto(addr018e);
                                       }
                                    }
                                    §§goto(addr015e);
                                 }
                                 addr018e:
                                 if(AbstractUIInfolayerContentVo.ALIGN_LEFT === _loc1_)
                                 {
                                    §§goto(addr0193);
                                 }
                                 else
                                 {
                                    §§push(4);
                                 }
                                 addr01b2:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       skin.currentState = "indicator_bottom";
                                       if(_loc3_ && Boolean(this))
                                       {
                                       }
                                       break;
                                    case 1:
                                       skin.currentState = "indicator_top";
                                       if(_loc2_)
                                       {
                                       }
                                       break;
                                    case 2:
                                       skin.currentState = "indicator_left";
                                       if(_loc3_ && _loc2_)
                                       {
                                       }
                                       break;
                                    case 3:
                                       skin.currentState = "indicator_right";
                                       if(_loc2_ || Boolean(this))
                                       {
                                       }
                                 }
                                 §§goto(addr01c8);
                              }
                           }
                           §§goto(addr015e);
                        }
                        §§goto(addr0123);
                     }
                     §§goto(addr013a);
                  }
                  addr01c8:
                  return;
               }
            }
            §§goto(addr0052);
         }
         §§goto(addr00de);
      }
      
      override public function move(param1:Number, param2:Number) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:* = this._data.alignment;
         if(!_loc4_)
         {
            §§push(AbstractUIInfolayerContentVo.ALIGN_TOP);
            if(_loc5_ || Boolean(_loc3_))
            {
               §§push(_loc3_);
               if(!_loc4_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc4_)
                     {
                        addr0105:
                        §§push(0);
                        if(_loc5_)
                        {
                        }
                     }
                     else
                     {
                        addr0167:
                        §§push(2);
                        if(_loc4_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(AbstractUIInfolayerContentVo.ALIGN_BOTTOM);
                     if(!(_loc4_ && Boolean(_loc3_)))
                     {
                        §§push(_loc3_);
                        if(!_loc4_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc5_)
                              {
                                 §§push(1);
                                 if(_loc4_ && Boolean(_loc3_))
                                 {
                                 }
                              }
                              else
                              {
                                 addr018c:
                                 §§push(3);
                                 if(_loc5_ || Boolean(_loc3_))
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push(AbstractUIInfolayerContentVo.ALIGN_RIGHT);
                              if(!_loc4_)
                              {
                                 addr0156:
                                 §§push(_loc3_);
                                 if(_loc5_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc4_)
                                       {
                                          §§goto(addr0167);
                                       }
                                       else
                                       {
                                          §§goto(addr018c);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr0188);
                                    }
                                    §§goto(addr018c);
                                 }
                                 addr0188:
                                 §§goto(addr0187);
                              }
                              addr0187:
                              if(AbstractUIInfolayerContentVo.ALIGN_LEFT === _loc3_)
                              {
                                 §§goto(addr018c);
                              }
                              else
                              {
                                 §§push(4);
                              }
                           }
                           §§goto(addr01ac);
                        }
                        §§goto(addr0188);
                     }
                     §§goto(addr0156);
                  }
                  addr01ac:
                  switch(§§pop())
                  {
                     case 0:
                        §§push(param1);
                        if(!(_loc4_ && Boolean(this)))
                        {
                           §§push(width / 2);
                           if(_loc5_)
                           {
                              §§push(§§pop() - §§pop());
                              if(_loc5_ || Boolean(_loc3_))
                              {
                                 §§push(§§pop());
                                 if(_loc5_ || Boolean(_loc3_))
                                 {
                                    param1 = §§pop();
                                    if(_loc4_ && Boolean(this))
                                    {
                                       break;
                                    }
                                    §§push(param2);
                                    if(_loc5_ || Boolean(param2))
                                    {
                                       §§push(§§pop() - height);
                                       if(_loc5_)
                                       {
                                          addr0079:
                                          §§push(§§pop());
                                          if(_loc5_)
                                          {
                                             addr0080:
                                             param2 = §§pop();
                                             if(_loc5_ || Boolean(this))
                                             {
                                             }
                                             break;
                                          }
                                          addr00a0:
                                          addr009b:
                                          §§push(§§pop() - width / 2);
                                          if(_loc5_)
                                          {
                                             addr00a7:
                                             §§push(§§pop());
                                          }
                                          param1 = §§pop();
                                          if(_loc5_ || Boolean(param1))
                                          {
                                          }
                                          break;
                                       }
                                       §§goto(addr00a7);
                                    }
                                    §§goto(addr0080);
                                 }
                              }
                              §§goto(addr0079);
                           }
                           §§goto(addr00a0);
                        }
                        §§goto(addr00a7);
                     case 1:
                        §§push(param1);
                        if(!_loc4_)
                        {
                           §§goto(addr009b);
                        }
                        §§goto(addr00a7);
                     case 2:
                     case 3:
                  }
                  super.move(param1,param2);
                  return;
               }
               §§goto(addr0188);
            }
            §§goto(addr0187);
         }
         §§goto(addr0105);
      }
   }
}

