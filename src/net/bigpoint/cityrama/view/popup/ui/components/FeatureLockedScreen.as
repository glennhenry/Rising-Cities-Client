package net.bigpoint.cityrama.view.popup.ui.components
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
   import mx.graphics.GradientEntry;
   import mx.graphics.RadialGradient;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public class FeatureLockedScreen extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _FeatureLockedScreen_BriskImageDynaLib1:BriskImageDynaLib;
      
      private var _1055687225textLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function FeatureLockedScreen()
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
            if(_loc4_)
            {
               §§pop().§§slot[3] = §§pop();
               if(_loc4_)
               {
                  §§push(§§newactivation());
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0042:
                     §§pop().§§slot[5] = null;
                     if(!(_loc3_ && _loc3_))
                     {
                        this.mx_internal::_bindings = [];
                        if(!_loc3_)
                        {
                           this.mx_internal::_watchers = [];
                           if(!_loc3_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(_loc4_)
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(_loc4_)
                                 {
                                    super();
                                    if(!_loc3_)
                                    {
                                       mx_internal::_document = this;
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          addr00a3:
                                          §§push(§§newactivation());
                                          if(_loc4_)
                                          {
                                             §§pop().§§slot[1] = this._FeatureLockedScreen_bindingsSetup();
                                             if(_loc4_)
                                             {
                                                §§push(§§newactivation());
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   §§pop().§§slot[2] = [];
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      addr00de:
                                                      §§push(§§newactivation());
                                                      if(!(_loc3_ && _loc1_))
                                                      {
                                                         §§pop().§§slot[3] = this;
                                                         if(_loc4_)
                                                         {
                                                            addr00f8:
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(_loc4_)
                                                                  {
                                                                     §§goto(addr010e);
                                                                  }
                                                                  §§goto(addr020c);
                                                               }
                                                               §§goto(addr01d7);
                                                            }
                                                            §§goto(addr0165);
                                                         }
                                                         §§goto(addr020a);
                                                      }
                                                      §§goto(addr0147);
                                                   }
                                                   §§goto(addr0165);
                                                }
                                                addr010e:
                                                §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_popup_ui_components_FeatureLockedScreenWatcherSetupUtil");
                                                if(_loc4_ || _loc1_)
                                                {
                                                   §§push(§§newactivation());
                                                   if(_loc4_ || Boolean(this))
                                                   {
                                                      addr0147:
                                                      §§pop().§§slot[5]["init"](null);
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         addr0165:
                                                         _watcherSetupUtil.setup(this,function(param1:String):*
                                                         {
                                                            return target[param1];
                                                         },function(param1:String):*
                                                         {
                                                            return FeatureLockedScreen[param1];
                                                         },bindings,watchers);
                                                         if(!_loc3_)
                                                         {
                                                            §§goto(addr0182);
                                                         }
                                                         §§goto(addr01a8);
                                                      }
                                                      §§goto(addr0182);
                                                   }
                                                   §§goto(addr020c);
                                                }
                                                addr0182:
                                                mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                if(!_loc3_)
                                                {
                                                   addr01a8:
                                                   mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      addr01d7:
                                                      this.percentWidth = 100;
                                                      if(!_loc3_)
                                                      {
                                                         §§goto(addr01e1);
                                                      }
                                                      §§goto(addr01f3);
                                                   }
                                                   §§goto(addr020a);
                                                }
                                                §§goto(addr01e1);
                                             }
                                             §§goto(addr01d7);
                                          }
                                          §§goto(addr0147);
                                       }
                                       §§goto(addr01f3);
                                    }
                                    §§goto(addr00f8);
                                 }
                                 addr01e1:
                                 this.percentHeight = 100;
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    addr01f3:
                                    this.mxmlContent = [this._FeatureLockedScreen_Rect1_c(),this._FeatureLockedScreen_HGroup1_c()];
                                    if(_loc4_)
                                    {
                                       addr020c:
                                       i = 0;
                                       addr020a:
                                    }
                                 }
                                 loop0:
                                 while(true)
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
                                          while(true)
                                          {
                                             if(§§pop() >= §§pop().§§slot[1].length)
                                             {
                                                break loop2;
                                             }
                                             Binding(bindings[i]).execute();
                                             if(_loc3_ && _loc1_)
                                             {
                                                break loop1;
                                             }
                                             §§push(§§newactivation());
                                             if(!_loc3_)
                                             {
                                                §§push(§§pop().§§slot[4]);
                                                if(!(_loc4_ || _loc2_))
                                                {
                                                   break;
                                                }
                                                §§push(uint(§§pop() + 1));
                                                if(_loc3_)
                                                {
                                                   break;
                                                }
                                                §§push(§§newactivation());
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   var _temp_22:* = §§pop();
                                                   §§pop().§§slot[4] = _temp_22;
                                                   if(_loc4_)
                                                   {
                                                      break loop1;
                                                   }
                                                   break loop2;
                                                }
                                                continue;
                                             }
                                             continue loop1;
                                          }
                                       }
                                       break loop0;
                                    }
                                 }
                                 return;
                              }
                              §§goto(addr0165);
                           }
                           §§goto(addr00a3);
                        }
                        §§goto(addr00de);
                     }
                     §§goto(addr01f3);
                  }
                  §§goto(addr0147);
               }
               §§goto(addr00de);
            }
            §§goto(addr0042);
         }
         §§goto(addr020c);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            FeatureLockedScreen._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc2_)
            {
               §§goto(addr0020);
            }
            §§goto(addr002e);
         }
         addr0020:
         if(this.__moduleFactoryInitialized)
         {
            if(_loc2_)
            {
               addr002e:
               return;
            }
         }
         else
         {
            this.__moduleFactoryInitialized = true;
         }
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super.initialize();
         }
      }
      
      private function _FeatureLockedScreen_Rect1_c() : Rect
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Rect = new Rect();
         if(_loc2_ || _loc3_)
         {
            _loc1_.left = 0;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.right = 0;
               if(!_loc3_)
               {
                  _loc1_.top = 0;
                  if(_loc2_)
                  {
                     addr006a:
                     _loc1_.bottom = 0;
                     if(_loc2_)
                     {
                        §§goto(addr0075);
                     }
                     §§goto(addr008c);
                  }
                  addr0075:
                  _loc1_.fill = this._FeatureLockedScreen_RadialGradient1_c();
                  if(!(_loc3_ && _loc2_))
                  {
                     addr008c:
                     _loc1_.initialized(this,null);
                  }
                  §§goto(addr0093);
               }
               addr0093:
               return _loc1_;
            }
            §§goto(addr0075);
         }
         §§goto(addr006a);
      }
      
      private function _FeatureLockedScreen_RadialGradient1_c() : RadialGradient
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:RadialGradient = new RadialGradient();
         if(!_loc2_)
         {
            _loc1_.entries = [this._FeatureLockedScreen_GradientEntry1_c()];
         }
         return _loc1_;
      }
      
      private function _FeatureLockedScreen_GradientEntry1_c() : GradientEntry
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:GradientEntry = new GradientEntry();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.color = 16119266;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.alpha = 0.8;
            }
         }
         return _loc1_;
      }
      
      private function _FeatureLockedScreen_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               §§goto(addr0028);
            }
            §§goto(addr0073);
         }
         addr0028:
         _loc1_.percentHeight = 100;
         if(!_loc3_)
         {
            _loc1_.paddingLeft = 230;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.paddingTop = 100;
               if(!(_loc3_ && _loc2_))
               {
                  addr0073:
                  _loc1_.mxmlContent = [this._FeatureLockedScreen_Group2_c()];
                  if(_loc2_ || _loc3_)
                  {
                     addr008b:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               §§goto(addr009b);
            }
            §§goto(addr008b);
         }
         addr009b:
         return _loc1_;
      }
      
      private function _FeatureLockedScreen_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.width = 284;
            if(_loc2_)
            {
               _loc1_.height = 174;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.mxmlContent = [this._FeatureLockedScreen_BriskImageDynaLib1_i(),this._FeatureLockedScreen_HGroup2_c()];
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr0074:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0074);
      }
      
      private function _FeatureLockedScreen_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.horizontalCenter = -15;
            if(_loc2_ || _loc2_)
            {
               _loc1_.verticalCenter = -24;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.id = "_FeatureLockedScreen_BriskImageDynaLib1";
                  if(!_loc3_)
                  {
                     addr0064:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0083:
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr008c:
                              this._FeatureLockedScreen_BriskImageDynaLib1 = _loc1_;
                              if(_loc2_)
                              {
                                 addr0096:
                                 BindingManager.executeBindings(this,"_FeatureLockedScreen_BriskImageDynaLib1",this._FeatureLockedScreen_BriskImageDynaLib1);
                              }
                              §§goto(addr00a3);
                           }
                           §§goto(addr0096);
                        }
                        §§goto(addr00a3);
                     }
                     §§goto(addr008c);
                  }
                  §§goto(addr0083);
               }
               addr00a3:
               return _loc1_;
            }
            §§goto(addr0064);
         }
         §§goto(addr0083);
      }
      
      private function _FeatureLockedScreen_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  addr003f:
                  _loc1_.paddingLeft = 20;
                  if(!_loc2_)
                  {
                     addr004a:
                     _loc1_.verticalAlign = "middle";
                     if(_loc3_)
                     {
                        addr0063:
                        _loc1_.mxmlContent = [this._FeatureLockedScreen_LocaLabel1_i()];
                        if(!_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr0087:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr008b);
                        }
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr0063);
               }
               addr008b:
               return _loc1_;
            }
            §§goto(addr004a);
         }
         §§goto(addr003f);
      }
      
      private function _FeatureLockedScreen_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || _loc2_)
         {
            _loc1_.width = 230;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.verticalCenter = -10;
               if(_loc2_)
               {
                  _loc1_.styleName = "fieldInfoHeader";
                  if(_loc2_)
                  {
                     addr005b:
                     _loc1_.id = "textLabel";
                     if(!(_loc3_ && _loc3_))
                     {
                        §§goto(addr007a);
                     }
                     §§goto(addr0086);
                  }
                  addr007a:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr0086:
                        _loc1_.document = this;
                        if(_loc2_)
                        {
                           §§goto(addr008f);
                        }
                        §§goto(addr0099);
                     }
                  }
                  addr008f:
                  this.textLabel = _loc1_;
                  if(!_loc3_)
                  {
                     addr0099:
                     BindingManager.executeBindings(this,"textLabel",this.textLabel);
                  }
                  §§goto(addr00a6);
               }
            }
            addr00a6:
            return _loc1_;
         }
         §§goto(addr005b);
      }
      
      private function _FeatureLockedScreen_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(!(_loc3_ && _loc2_))
         {
            §§pop().§§slot[1] = [];
            if(!(_loc3_ && _loc1_))
            {
               §§push(§§newactivation());
               if(!(_loc3_ && _loc1_))
               {
                  §§push(§§pop().§§slot[1]);
                  if(_loc2_ || _loc3_)
                  {
                     §§pop()[0] = new Binding(this,function():BriskDynaVo
                     {
                        return new BriskDynaVo("gui_popups_paperPopup","locked_feature_postit");
                     },null,"_FeatureLockedScreen_BriskImageDynaLib1.briskDynaVo");
                     addr0081:
                     addr007f:
                     return result;
                  }
               }
               §§goto(addr0081);
            }
            §§goto(addr007f);
         }
         §§goto(addr0081);
      }
      
      [Bindable(event="propertyChange")]
      public function get textLabel() : LocaLabel
      {
         return this._1055687225textLabel;
      }
      
      public function set textLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1055687225textLabel;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr0046:
                  this._1055687225textLabel = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr007a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"textLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0089);
                  }
                  §§goto(addr007a);
               }
            }
            addr0089:
            return;
         }
         §§goto(addr0046);
      }
   }
}

