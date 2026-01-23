package net.bigpoint.cityrama.view.departmentBook.ui.components
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
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.infrastructure.vo.SecurityStatusVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.HGroup;
   
   use namespace mx_internal;
   
   public class SecurityGradeComponent extends HGroup implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _1835614690rangeImage:BriskImageDynaLib;
      
      private var _1833200713rangeLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:SecurityStatusVo;
      
      private var _dataIsDirty:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function SecurityGradeComponent()
      {
         var bindings:Array;
         var watchers:Array;
         var target:Object;
         var i:uint;
         var watcherSetupUtilClass:Object;
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(_loc4_)
         {
            §§push(null);
            if(!(_loc3_ && _loc2_))
            {
               §§pop().§§slot[3] = §§pop();
               if(!(_loc3_ && _loc2_))
               {
                  §§push(§§newactivation());
                  if(!_loc3_)
                  {
                     addr0047:
                     §§pop().§§slot[5] = null;
                     if(!(_loc3_ && _loc1_))
                     {
                        this.mx_internal::_bindings = [];
                        if(!_loc3_)
                        {
                           addr0063:
                           this.mx_internal::_watchers = [];
                           if(_loc4_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(_loc4_)
                              {
                                 addr007b:
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(_loc4_ || _loc3_)
                                 {
                                    super();
                                    if(!_loc3_)
                                    {
                                       mx_internal::_document = this;
                                       if(_loc4_)
                                       {
                                          addr00aa:
                                          §§push(§§newactivation());
                                          if(!_loc3_)
                                          {
                                             §§pop().§§slot[1] = this._SecurityGradeComponent_bindingsSetup();
                                             if(_loc4_ || _loc2_)
                                             {
                                                addr00c9:
                                                §§push(§§newactivation());
                                                if(_loc4_)
                                                {
                                                   §§pop().§§slot[2] = [];
                                                   if(_loc4_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(_loc4_)
                                                      {
                                                         addr00e5:
                                                         §§pop().§§slot[3] = this;
                                                         if(!(_loc3_ && _loc1_))
                                                         {
                                                            addr00f7:
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(!(_loc3_ && Boolean(this)))
                                                               {
                                                                  addr010c:
                                                                  §§push(§§newactivation());
                                                                  if(!(_loc3_ && _loc2_))
                                                                  {
                                                                     addr011b:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_departmentBook_ui_components_SecurityGradeComponentWatcherSetupUtil");
                                                                     if(!(_loc3_ && Boolean(this)))
                                                                     {
                                                                        addr0144:
                                                                        §§push(§§newactivation());
                                                                        if(!(_loc3_ && Boolean(this)))
                                                                        {
                                                                           addr0153:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(_loc4_ || _loc2_)
                                                                           {
                                                                              addr0172:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return SecurityGradeComponent[param1];
                                                                              },bindings,watchers);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       this.horizontalAlign = "center";
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          this.width = 90;
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             addr01f1:
                                                                                             this.gap = 3;
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                addr01fb:
                                                                                                this.verticalAlign = "middle";
                                                                                                if(_loc4_ || _loc1_)
                                                                                                {
                                                                                                   addr020f:
                                                                                                   this.mxmlContent = [this._SecurityGradeComponent_BriskImageDynaLib1_i(),this._SecurityGradeComponent_LocaLabel1_i()];
                                                                                                   if(_loc4_ || _loc1_)
                                                                                                   {
                                                                                                      addr0230:
                                                                                                      i = 0;
                                                                                                      addr022e:
                                                                                                   }
                                                                                                   var _temp_16:*;
                                                                                                   loop0:
                                                                                                   do
                                                                                                   {
                                                                                                      §§push(§§newactivation());
                                                                                                      loop1:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().§§slot[4]);
                                                                                                         loop2:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§newactivation());
                                                                                                            while(§§pop() < §§pop().§§slot[1].length)
                                                                                                            {
                                                                                                               Binding(bindings[i]).execute();
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§push(§§newactivation());
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  §§push(§§pop().§§slot[4]);
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     §§push(uint(§§pop() + 1));
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        continue loop2;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(_loc4_ || _loc3_)
                                                                                                                  {
                                                                                                                     continue loop0;
                                                                                                                  }
                                                                                                                  continue;
                                                                                                               }
                                                                                                               continue loop1;
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   while(var _temp_16:* = §§pop(), §§pop().§§slot[4] = _temp_16, !_loc3_);
                                                                                                   
                                                                                                   return;
                                                                                                   addr028c:
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr022e);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr01f1);
                                                                                 }
                                                                                 §§goto(addr01fb);
                                                                              }
                                                                              §§goto(addr01f1);
                                                                           }
                                                                           §§goto(addr01fb);
                                                                        }
                                                                        §§goto(addr0230);
                                                                     }
                                                                     §§goto(addr020f);
                                                                  }
                                                                  §§goto(addr0153);
                                                               }
                                                               §§goto(addr01f1);
                                                            }
                                                            §§goto(addr0172);
                                                         }
                                                         §§goto(addr022e);
                                                      }
                                                      §§goto(addr011b);
                                                   }
                                                   §§goto(addr028c);
                                                }
                                                §§goto(addr011b);
                                             }
                                             §§goto(addr0144);
                                          }
                                          §§goto(addr00e5);
                                       }
                                       §§goto(addr010c);
                                    }
                                    §§goto(addr00f7);
                                 }
                                 §§goto(addr00c9);
                              }
                              §§goto(addr00aa);
                           }
                           §§goto(addr028c);
                        }
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr011b);
               }
               §§goto(addr0063);
            }
            §§goto(addr0047);
         }
         §§goto(addr011b);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            SecurityGradeComponent._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc3_ || _loc2_)
            {
               addr0036:
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc2_)
                  {
                     return;
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         §§goto(addr0036);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super.initialize();
         }
      }
      
      public function set data(param1:SecurityStatusVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(!(_loc2_ && _loc2_))
               {
                  this._data = param1;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     this._dataIsDirty = true;
                     if(_loc3_)
                     {
                        invalidateProperties();
                     }
                  }
               }
            }
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.commitProperties();
            if(!_loc3_)
            {
               if(this._dataIsDirty)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     this._dataIsDirty = false;
                  }
                  addr00ca:
                  §§push(this._data.level);
                  if(!(_loc3_ && _loc1_))
                  {
                     var _loc1_:* = §§pop();
                     if(_loc2_ || _loc3_)
                     {
                        §§push(SecurityStatusVo.LEVEL_1);
                        if(!_loc3_)
                        {
                           §§push(_loc1_);
                           if(!_loc3_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc2_ || Boolean(this))
                                 {
                                    §§push(0);
                                    if(_loc2_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr013b:
                                    §§push(1);
                                    if(_loc3_)
                                    {
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(SecurityStatusVo.LEVEL_2);
                                 if(!_loc3_)
                                 {
                                    §§push(_loc1_);
                                    if(!(_loc3_ && _loc1_))
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc2_)
                                          {
                                             §§goto(addr013b);
                                          }
                                          else
                                          {
                                             addr0156:
                                             §§push(2);
                                             if(_loc2_ || Boolean(this))
                                             {
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push(SecurityStatusVo.LEVEL_3);
                                          if(_loc2_)
                                          {
                                             addr0152:
                                             if(§§pop() === _loc1_)
                                             {
                                                §§goto(addr0156);
                                             }
                                             else
                                             {
                                                §§push(3);
                                             }
                                          }
                                       }
                                       addr0186:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             §§push(this.rangeImage);
                                             if(_loc2_ || _loc1_)
                                             {
                                                §§pop().dynaBmpSourceName = getStyle("imageRangeThree");
                                                if(_loc3_ && _loc2_)
                                                {
                                                   break;
                                                }
                                             }
                                             else
                                             {
                                                addr009b:
                                                §§pop().dynaBmpSourceName = getStyle("imageRangeOne");
                                                if(_loc2_ || _loc3_)
                                                {
                                                }
                                             }
                                             addr019c:
                                             §§push(this.rangeLabel);
                                             §§push(this._data.x + " x ");
                                             if(_loc2_)
                                             {
                                                §§push(§§pop() + this._data.y);
                                             }
                                             §§pop().text = §§pop();
                                             break;
                                          case 1:
                                             §§push(this.rangeImage);
                                             if(_loc2_ || _loc2_)
                                             {
                                                §§pop().dynaBmpSourceName = getStyle("imageRangeTwo");
                                                if(!_loc2_)
                                                {
                                                   break;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr009b);
                                             }
                                             §§goto(addr019c);
                                          case 2:
                                             §§goto(addr009b);
                                             §§push(this.rangeImage);
                                          default:
                                             §§goto(addr019c);
                                       }
                                       addr01b9:
                                       return;
                                       addr0184:
                                    }
                                    §§goto(addr0152);
                                 }
                              }
                              §§goto(addr0184);
                           }
                           §§goto(addr0152);
                        }
                        §§goto(addr0184);
                     }
                     §§goto(addr0156);
                  }
                  §§goto(addr0186);
               }
               §§goto(addr01b9);
            }
         }
         §§goto(addr00ca);
      }
      
      private function _SecurityGradeComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.id = "rangeImage";
            if(_loc3_ || _loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr005d);
                  }
                  §§goto(addr0078);
               }
               §§goto(addr0066);
            }
            §§goto(addr0078);
         }
         addr005d:
         _loc1_.document = this;
         if(_loc3_)
         {
            addr0066:
            this.rangeImage = _loc1_;
            if(!(_loc2_ && _loc2_))
            {
               addr0078:
               BindingManager.executeBindings(this,"rangeImage",this.rangeImage);
            }
         }
         return _loc1_;
      }
      
      private function _SecurityGradeComponent_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.id = "rangeLabel";
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(this)))
                     {
                        §§goto(addr0071);
                     }
                     §§goto(addr008c);
                  }
                  §§goto(addr007a);
               }
               addr0071:
               _loc1_.document = this;
               if(!_loc3_)
               {
                  addr007a:
                  this.rangeLabel = _loc1_;
                  if(_loc2_ || _loc2_)
                  {
                     addr008c:
                     BindingManager.executeBindings(this,"rangeLabel",this.rangeLabel);
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr007a);
      }
      
      private function _SecurityGradeComponent_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(!(_loc2_ && _loc1_))
         {
            §§pop().§§slot[1] = [];
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§newactivation());
               if(_loc3_ || _loc3_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(0);
                     if(_loc3_ || _loc2_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():String
                        {
                           var _loc1_:* = getStyle("imageRangeLib");
                           return _loc1_ == undefined ? null : String(_loc1_);
                        },null,"rangeImage.dynaLibName");
                        if(!_loc2_)
                        {
                           §§push(§§newactivation());
                           if(!_loc2_)
                           {
                              §§goto(addr00bc);
                           }
                           §§goto(addr00ba);
                        }
                        §§goto(addr00b8);
                     }
                     §§goto(addr00a6);
                  }
                  addr00bc:
                  §§goto(addr009d);
               }
               §§goto(addr00ba);
            }
            §§goto(addr00b8);
         }
         addr009d:
         §§push(§§pop().§§slot[1]);
         if(_loc3_)
         {
            addr00a6:
            §§pop()[1] = new Binding(this,function():Object
            {
               return getStyle("rangeLabelStyleName");
            },null,"rangeLabel.styleName");
            addr00ba:
            addr00b8:
            return result;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rangeImage() : BriskImageDynaLib
      {
         return this._1835614690rangeImage;
      }
      
      public function set rangeImage(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1835614690rangeImage;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  addr0041:
                  this._1835614690rangeImage = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr0075);
               }
               addr005e:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0075:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rangeImage",_loc2_,param1));
                  }
               }
               §§goto(addr0084);
            }
            addr0084:
            return;
         }
         §§goto(addr0041);
      }
      
      [Bindable(event="propertyChange")]
      public function get rangeLabel() : LocaLabel
      {
         return this._1833200713rangeLabel;
      }
      
      public function set rangeLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1833200713rangeLabel;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr0036:
                  this._1833200713rangeLabel = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr004f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rangeLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr005e);
                  }
                  §§goto(addr004f);
               }
            }
            addr005e:
            return;
         }
         §§goto(addr0036);
      }
   }
}

