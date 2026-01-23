package net.bigpoint.cityrama.view.settingsbar.ui.dev
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
   import mx.controls.ProgressBar;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.graphics.GradientEntry;
   import mx.graphics.LinearGradient;
   import mx.graphics.LinearGradientStroke;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.skins.DebugBoxSkin;
   import spark.components.Button;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.RichEditableText;
   import spark.components.Scroller;
   import spark.components.SkinnableContainer;
   import spark.components.TextInput;
   import spark.components.ToggleButton;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public class QMConsole extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _QMConsole_VGroup2:VGroup;
      
      public var _QMConsole_VGroup3:VGroup;
      
      public var _QMConsole_VGroup4:VGroup;
      
      private var _1665131364cleanBoulder:Button;
      
      private var _412894224compareBags:ToggleButton;
      
      private var _951510359console:RichEditableText;
      
      private var _1995998646constructAll:Button;
      
      private var _768939741divInventoryButton:Button;
      
      private var _390042577divResourceButton:ToggleButton;
      
      private var _235254679inagurateAll:Button;
      
      private var _64239424inventorySnapshot:ToggleButton;
      
      private var _1131509414progressBar:ProgressBar;
      
      private var _762537260repairAll:Button;
      
      private var _1529240512showFeatrueDebug:ToggleButton;
      
      private var _1509476196showmacros:ToggleButton;
      
      private var _1881524610showwheel:ToggleButton;
      
      private var _809744082traceFeatureStats:ToggleButton;
      
      private var _1450144975unlockAllExpansions:Button;
      
      private var _2021615751usewheelbuff:ToggleButton;
      
      private var _1413042176wheelSniffer:Button;
      
      private var _1668363766wheelspins:TextInput;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function QMConsole()
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
         if(!_loc3_)
         {
            §§push(null);
            if(_loc4_)
            {
               §§pop().§§slot[3] = §§pop();
               if(_loc4_ || _loc3_)
               {
                  §§push(§§newactivation());
                  if(_loc4_)
                  {
                     addr0041:
                     §§pop().§§slot[5] = null;
                     if(!_loc3_)
                     {
                        this.mx_internal::_bindings = [];
                        if(_loc4_ || _loc2_)
                        {
                           this.mx_internal::_watchers = [];
                           if(_loc4_ || Boolean(this))
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(!_loc3_)
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(!_loc3_)
                                 {
                                    super();
                                    if(!(_loc3_ && _loc1_))
                                    {
                                       mx_internal::_document = this;
                                       if(_loc4_)
                                       {
                                          §§push(§§newactivation());
                                          if(!_loc3_)
                                          {
                                             addr00b2:
                                             §§pop().§§slot[1] = this._QMConsole_bindingsSetup();
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                addr00c9:
                                                §§push(§§newactivation());
                                                if(_loc4_)
                                                {
                                                   addr00d1:
                                                   §§pop().§§slot[2] = [];
                                                   if(!_loc3_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         §§pop().§§slot[3] = this;
                                                         if(!_loc3_)
                                                         {
                                                            addr00f6:
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(_loc4_ || Boolean(this))
                                                               {
                                                                  addr010c:
                                                                  §§push(§§newactivation());
                                                                  if(!(_loc3_ && _loc1_))
                                                                  {
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_settingsbar_ui_dev_QMConsoleWatcherSetupUtil");
                                                                     if(_loc4_ || _loc3_)
                                                                     {
                                                                        addr0142:
                                                                        §§push(§§newactivation());
                                                                        if(_loc4_)
                                                                        {
                                                                           addr014a:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(!(_loc3_ && _loc2_))
                                                                           {
                                                                              addr0168:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return QMConsole[param1];
                                                                              },bindings,watchers);
                                                                              if(!(_loc3_ && _loc1_))
                                                                              {
                                                                                 addr018b:
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    addr01b2:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(!(_loc3_ && _loc2_))
                                                                                    {
                                                                                       addr01e0:
                                                                                       this.percentWidth = 100;
                                                                                       if(_loc4_ || _loc1_)
                                                                                       {
                                                                                          addr01f3:
                                                                                          this.maxHeight = 530;
                                                                                          if(!(_loc3_ && _loc1_))
                                                                                          {
                                                                                             addr0207:
                                                                                             this.mxmlContent = [this._QMConsole_SkinnableContainer1_c()];
                                                                                             if(_loc4_ || Boolean(this))
                                                                                             {
                                                                                                addr0222:
                                                                                                i = 0;
                                                                                                addr0220:
                                                                                             }
                                                                                          }
                                                                                          var _temp_18:*;
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
                                                                                                      if(!(_loc4_ || _loc1_))
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
                                                                                                            if(_loc3_ && _loc3_)
                                                                                                            {
                                                                                                               continue loop2;
                                                                                                            }
                                                                                                         }
                                                                                                         §§push(§§newactivation());
                                                                                                         if(!(_loc3_ && _loc2_))
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
                                                                                          while(var _temp_18:* = §§pop(), §§pop().§§slot[4] = _temp_18, !_loc3_);
                                                                                          
                                                                                          return;
                                                                                          addr0290:
                                                                                       }
                                                                                       §§goto(addr0220);
                                                                                    }
                                                                                    §§goto(addr0290);
                                                                                 }
                                                                                 §§goto(addr01e0);
                                                                              }
                                                                              §§goto(addr01f3);
                                                                           }
                                                                           §§goto(addr01e0);
                                                                        }
                                                                        §§goto(addr0222);
                                                                     }
                                                                     §§goto(addr0207);
                                                                  }
                                                                  §§goto(addr014a);
                                                               }
                                                               §§goto(addr01b2);
                                                            }
                                                            §§goto(addr0168);
                                                         }
                                                         §§goto(addr018b);
                                                      }
                                                      §§goto(addr0222);
                                                   }
                                                   §§goto(addr00f6);
                                                }
                                                §§goto(addr014a);
                                             }
                                             §§goto(addr0220);
                                          }
                                          §§goto(addr00d1);
                                       }
                                       §§goto(addr010c);
                                    }
                                    §§goto(addr018b);
                                 }
                                 §§goto(addr0142);
                              }
                              §§goto(addr00c9);
                           }
                           §§goto(addr0290);
                        }
                        §§goto(addr0207);
                     }
                     §§goto(addr0168);
                  }
                  §§goto(addr00b2);
               }
               §§goto(addr0290);
            }
            §§goto(addr0041);
         }
         §§goto(addr00d1);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            QMConsole._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || _loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     return;
                  }
               }
               addr004f:
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         §§goto(addr004f);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.initialize();
         }
      }
      
      public function trace(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this.console.text = this.console.text + "\n" + param1;
         }
      }
      
      private function button1_clickHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this.console.text = "";
         }
      }
      
      private function _QMConsole_SkinnableContainer1_c() : SkinnableContainer
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SkinnableContainer = new SkinnableContainer();
         if(!_loc2_)
         {
            _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._QMConsole_Array2_c);
            if(_loc3_)
            {
               _loc1_.setStyle("skinClass",DebugBoxSkin);
               if(_loc3_ || _loc2_)
               {
                  addr0068:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr0074:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0078);
               }
               §§goto(addr0074);
            }
            addr0078:
            return _loc1_;
         }
         §§goto(addr0068);
      }
      
      private function _QMConsole_Array2_c() : Array
      {
         return [this._QMConsole_VGroup1_c()];
      }
      
      private function _QMConsole_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.maxHeight = 530;
            if(_loc3_)
            {
               _loc1_.mxmlContent = [this._QMConsole_Group2_c(),this._QMConsole_HGroup1_c(),this._QMConsole_HGroup2_c(),this._QMConsole_VGroup2_i(),this._QMConsole_VGroup3_i(),this._QMConsole_VGroup4_i()];
               if(_loc3_ || Boolean(_loc1_))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        addr0097:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr009b);
               }
               §§goto(addr0097);
            }
            addr009b:
            return _loc1_;
         }
         §§goto(addr0097);
      }
      
      private function _QMConsole_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.minHeight = 20;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.percentWidth = 100;
               if(_loc3_ || Boolean(this))
               {
                  addr0052:
                  _loc1_.maxHeight = 530;
                  if(_loc3_)
                  {
                     _loc1_.mxmlContent = [this._QMConsole_Rect1_c(),this._QMConsole_Scroller1_c()];
                     if(!(_loc2_ && _loc3_))
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0052);
      }
      
      private function _QMConsole_Rect1_c() : Rect
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Rect = new Rect();
         if(_loc3_)
         {
            _loc1_.top = 0;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.bottom = 0;
               if(_loc3_)
               {
                  _loc1_.left = 0;
                  if(_loc3_)
                  {
                     _loc1_.right = 0;
                     if(!_loc2_)
                     {
                        _loc1_.radiusX = 4;
                        if(_loc3_)
                        {
                           _loc1_.radiusY = 4;
                           if(_loc3_ || _loc3_)
                           {
                              _loc1_.stroke = this._QMConsole_LinearGradientStroke1_c();
                              if(_loc3_)
                              {
                                 addr0098:
                                 _loc1_.fill = this._QMConsole_LinearGradient1_c();
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    addr00af:
                                    _loc1_.initialized(this,null);
                                 }
                              }
                              §§goto(addr00b6);
                           }
                           §§goto(addr0098);
                        }
                        §§goto(addr00b6);
                     }
                     §§goto(addr00af);
                  }
                  §§goto(addr00b6);
               }
            }
            §§goto(addr00af);
         }
         addr00b6:
         return _loc1_;
      }
      
      private function _QMConsole_LinearGradientStroke1_c() : LinearGradientStroke
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LinearGradientStroke = new LinearGradientStroke();
         if(!_loc2_)
         {
            _loc1_.weight = 1;
         }
         return _loc1_;
      }
      
      private function _QMConsole_LinearGradient1_c() : LinearGradient
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LinearGradient = new LinearGradient();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.entries = [this._QMConsole_GradientEntry1_c()];
         }
         return _loc1_;
      }
      
      private function _QMConsole_GradientEntry1_c() : GradientEntry
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:GradientEntry = new GradientEntry();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.alpha = 1;
            if(!(_loc3_ && _loc3_))
            {
               addr0046:
               _loc1_.color = 16777215;
            }
            return _loc1_;
         }
         §§goto(addr0046);
      }
      
      private function _QMConsole_Scroller1_c() : Scroller
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Scroller = new Scroller();
         if(!_loc2_)
         {
            _loc1_.maxHeight = 430;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.percentWidth = 100;
               if(_loc3_)
               {
                  addr0058:
                  _loc1_.viewport = this._QMConsole_RichEditableText1_i();
                  if(_loc3_)
                  {
                     addr0067:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(this)))
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0058);
         }
         §§goto(addr0067);
      }
      
      private function _QMConsole_RichEditableText1_i() : RichEditableText
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:RichEditableText = new RichEditableText();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.selectable = true;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr004b:
                  _loc1_.id = "console";
                  if(_loc2_)
                  {
                     §§goto(addr0056);
                  }
                  §§goto(addr0091);
               }
               addr0056:
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     _loc1_.document = this;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        §§goto(addr007f);
                     }
                     §§goto(addr0091);
                  }
               }
               addr007f:
               this.console = _loc1_;
               if(_loc2_ || _loc3_)
               {
                  addr0091:
                  BindingManager.executeBindings(this,"console",this.console);
               }
               §§goto(addr009e);
            }
            addr009e:
            return _loc1_;
         }
         §§goto(addr004b);
      }
      
      private function _QMConsole_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.mxmlContent = [this._QMConsole_Button1_c(),this._QMConsole_ToggleButton1_i(),this._QMConsole_ToggleButton2_i(),this._QMConsole_ToggleButton3_i(),this._QMConsole_ToggleButton4_i()];
            if(!_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr0078:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0078);
      }
      
      private function _QMConsole_Button1_c() : Button
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Button = new Button();
         if(_loc3_)
         {
            _loc1_.label = "clear console";
            if(_loc3_)
            {
               _loc1_.addEventListener("click",this.___QMConsole_Button1_click);
               if(!(_loc2_ && Boolean(this)))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(this))
                     {
                        addr0072:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0076);
               }
               §§goto(addr0072);
            }
         }
         addr0076:
         return _loc1_;
      }
      
      public function ___QMConsole_Button1_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.button1_clickHandler(param1);
         }
      }
      
      private function _QMConsole_ToggleButton1_i() : ToggleButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ToggleButton = new ToggleButton();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.label = "wheel";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.id = "showwheel";
               if(!(_loc3_ && _loc2_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr0073:
                        _loc1_.document = this;
                        if(_loc2_ || Boolean(this))
                        {
                           §§goto(addr0084);
                        }
                     }
                     §§goto(addr008e);
                  }
                  addr0084:
                  this.showwheel = _loc1_;
                  if(!_loc3_)
                  {
                     addr008e:
                     BindingManager.executeBindings(this,"showwheel",this.showwheel);
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0073);
         }
         §§goto(addr008e);
      }
      
      private function _QMConsole_ToggleButton2_i() : ToggleButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ToggleButton = new ToggleButton();
         if(_loc2_)
         {
            _loc1_.label = "fielditem macros";
            if(!_loc3_)
            {
               _loc1_.id = "showmacros";
               if(!(_loc3_ && _loc3_))
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr0066:
                        _loc1_.document = this;
                        if(!_loc3_)
                        {
                           addr006f:
                           this.showmacros = _loc1_;
                           if(!(_loc3_ && _loc2_))
                           {
                              addr0081:
                              BindingManager.executeBindings(this,"showmacros",this.showmacros);
                           }
                        }
                        §§goto(addr008e);
                     }
                     §§goto(addr0081);
                  }
                  §§goto(addr006f);
               }
               addr008e:
               return _loc1_;
            }
            §§goto(addr0081);
         }
         §§goto(addr0066);
      }
      
      private function _QMConsole_ToggleButton3_i() : ToggleButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ToggleButton = new ToggleButton();
         if(_loc3_)
         {
            _loc1_.label = "feature feature";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.id = "showFeatrueDebug";
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        §§goto(addr006f);
                     }
                     §§goto(addr008a);
                  }
               }
               §§goto(addr0080);
            }
            addr006f:
            _loc1_.document = this;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               addr0080:
               this.showFeatrueDebug = _loc1_;
               if(_loc3_)
               {
                  addr008a:
                  BindingManager.executeBindings(this,"showFeatrueDebug",this.showFeatrueDebug);
               }
            }
            §§goto(addr0097);
         }
         addr0097:
         return _loc1_;
      }
      
      private function _QMConsole_ToggleButton4_i() : ToggleButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ToggleButton = new ToggleButton();
         if(!_loc2_)
         {
            _loc1_.toolTip = "Enable=take snapshot, disable = compare";
            if(_loc3_)
            {
               _loc1_.label = "ResourceSnapshot";
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.id = "divResourceButton";
                  if(_loc3_)
                  {
                     addr005c:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              addr0084:
                              this.divResourceButton = _loc1_;
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 BindingManager.executeBindings(this,"divResourceButton",this.divResourceButton);
                              }
                           }
                        }
                        §§goto(addr00a3);
                     }
                     §§goto(addr0084);
                  }
               }
            }
            addr00a3:
            return _loc1_;
         }
         §§goto(addr005c);
      }
      
      private function _QMConsole_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.visible = false;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.includeInLayout = false;
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._QMConsole_ToggleButton5_i(),this._QMConsole_Button2_i()];
                  if(!_loc3_)
                  {
                     addr0067:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr0073:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0077);
                  }
                  §§goto(addr0073);
               }
               §§goto(addr0077);
            }
            §§goto(addr0067);
         }
         addr0077:
         return _loc1_;
      }
      
      private function _QMConsole_ToggleButton5_i() : ToggleButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ToggleButton = new ToggleButton();
         if(_loc3_)
         {
            _loc1_.label = "Inventory Snapshot";
            if(_loc3_)
            {
               §§goto(addr0031);
            }
            §§goto(addr0070);
         }
         addr0031:
         _loc1_.id = "inventorySnapshot";
         if(_loc3_)
         {
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  §§goto(addr0054);
               }
               §§goto(addr0082);
            }
            §§goto(addr0070);
         }
         addr0054:
         _loc1_.document = this;
         if(!(_loc2_ && _loc3_))
         {
            addr0070:
            this.inventorySnapshot = _loc1_;
            if(_loc3_ || _loc2_)
            {
               addr0082:
               BindingManager.executeBindings(this,"inventorySnapshot",this.inventorySnapshot);
            }
         }
         return _loc1_;
      }
      
      private function _QMConsole_Button2_i() : Button
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Button = new Button();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.label = "Inventory Div";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.id = "divInventoryButton";
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        _loc1_.document = this;
                        if(!(_loc3_ && _loc3_))
                        {
                           addr007b:
                           this.divInventoryButton = _loc1_;
                           if(_loc2_)
                           {
                              addr0085:
                              BindingManager.executeBindings(this,"divInventoryButton",this.divInventoryButton);
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr007b);
               }
            }
         }
         §§goto(addr0085);
      }
      
      private function _QMConsole_VGroup2_i() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.mxmlContent = [this._QMConsole_HGroup3_c()];
            if(_loc2_ || Boolean(this))
            {
               _loc1_.id = "_QMConsole_VGroup2";
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        _loc1_.document = this;
                        if(_loc2_)
                        {
                           addr0075:
                           this._QMConsole_VGroup2 = _loc1_;
                           if(_loc2_ || _loc3_)
                           {
                              addr0088:
                              BindingManager.executeBindings(this,"_QMConsole_VGroup2",this._QMConsole_VGroup2);
                           }
                           §§goto(addr0096);
                        }
                        §§goto(addr0088);
                     }
                     §§goto(addr0096);
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0088);
            }
            §§goto(addr0075);
         }
         addr0096:
         return _loc1_;
      }
      
      private function _QMConsole_HGroup3_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.mxmlContent = [this._QMConsole_Button3_i(),this._QMConsole_Button4_i(),this._QMConsole_Button5_i(),this._QMConsole_Button6_i(),this._QMConsole_Button7_i()];
            if(!(_loc2_ && _loc2_))
            {
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _QMConsole_Button3_i() : Button
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Button = new Button();
         if(_loc3_ || _loc3_)
         {
            _loc1_.toolTip = "Will remove all Boulder !!";
            if(!_loc2_)
            {
               _loc1_.label = "kill Boulder";
               if(_loc3_)
               {
                  _loc1_.id = "cleanBoulder";
                  if(_loc3_ || _loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              addr0089:
                              this.cleanBoulder = _loc1_;
                              if(_loc3_)
                              {
                                 BindingManager.executeBindings(this,"cleanBoulder",this.cleanBoulder);
                              }
                           }
                        }
                        §§goto(addr00a0);
                     }
                  }
               }
               §§goto(addr0089);
            }
         }
         addr00a0:
         return _loc1_;
      }
      
      private function _QMConsole_Button4_i() : Button
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Button = new Button();
         if(!_loc3_)
         {
            _loc1_.toolTip = "Will inagureate all residentials with workers!!";
            if(!_loc3_)
            {
               _loc1_.label = "inagurate all";
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.id = "inagurateAll";
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           _loc1_.document = this;
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr0081:
                              this.inagurateAll = _loc1_;
                              if(_loc2_ || _loc3_)
                              {
                                 addr0093:
                                 BindingManager.executeBindings(this,"inagurateAll",this.inagurateAll);
                              }
                           }
                        }
                        §§goto(addr00a0);
                     }
                  }
                  §§goto(addr0081);
               }
               §§goto(addr0093);
            }
            addr00a0:
            return _loc1_;
         }
         §§goto(addr0081);
      }
      
      private function _QMConsole_Button5_i() : Button
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Button = new Button();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.toolTip = "Will insta construct all buildings!";
            if(_loc3_)
            {
               _loc1_.label = "finish construction";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr0054:
                  _loc1_.id = "constructAll";
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0067:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           §§goto(addr0088);
                        }
                     }
                  }
                  §§goto(addr0091);
               }
               addr0088:
               _loc1_.document = this;
               if(_loc3_)
               {
                  addr0091:
                  this.constructAll = _loc1_;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     BindingManager.executeBindings(this,"constructAll",this.constructAll);
                  }
               }
               return _loc1_;
            }
            §§goto(addr0067);
         }
         §§goto(addr0054);
      }
      
      private function _QMConsole_Button6_i() : Button
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Button = new Button();
         if(_loc3_)
         {
            _loc1_.toolTip = "Will repair all failed emergencies!";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.label = "repair all";
               if(_loc3_ || _loc3_)
               {
                  addr0057:
                  _loc1_.id = "repairAll";
                  if(_loc3_)
                  {
                     addr0062:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              §§goto(addr008c);
                           }
                           §§goto(addr009e);
                        }
                     }
                  }
                  addr008c:
                  this.repairAll = _loc1_;
                  if(!(_loc2_ && _loc2_))
                  {
                     addr009e:
                     BindingManager.executeBindings(this,"repairAll",this.repairAll);
                  }
                  §§goto(addr00ab);
               }
               addr00ab:
               return _loc1_;
            }
            §§goto(addr0062);
         }
         §§goto(addr0057);
      }
      
      private function _QMConsole_Button7_i() : Button
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Button = new Button();
         if(!_loc2_)
         {
            _loc1_.toolTip = "Will buy all expansions!";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.label = "unlock expansions";
               if(!_loc2_)
               {
                  _loc1_.id = "unlockAllExpansions";
                  if(_loc3_ || Boolean(this))
                  {
                     addr005e:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr0075:
                           _loc1_.document = this;
                           if(_loc3_ || _loc2_)
                           {
                              §§goto(addr0086);
                           }
                        }
                        §§goto(addr0090);
                     }
                  }
                  addr0086:
                  this.unlockAllExpansions = _loc1_;
                  if(!_loc2_)
                  {
                     addr0090:
                     BindingManager.executeBindings(this,"unlockAllExpansions",this.unlockAllExpansions);
                  }
                  return _loc1_;
               }
               §§goto(addr0075);
            }
            §§goto(addr005e);
         }
         §§goto(addr0090);
      }
      
      private function _QMConsole_VGroup3_i() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.mxmlContent = [this._QMConsole_HGroup4_c()];
            if(_loc2_)
            {
               _loc1_.id = "_QMConsole_VGroup3";
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        §§goto(addr0061);
                     }
                  }
                  §§goto(addr0072);
               }
               addr0061:
               _loc1_.document = this;
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr0072:
                  this._QMConsole_VGroup3 = _loc1_;
                  if(!_loc3_)
                  {
                     addr007d:
                     BindingManager.executeBindings(this,"_QMConsole_VGroup3",this._QMConsole_VGroup3);
                  }
               }
               §§goto(addr008b);
            }
            addr008b:
            return _loc1_;
         }
         §§goto(addr007d);
      }
      
      private function _QMConsole_HGroup4_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.mxmlContent = [this._QMConsole_ToggleButton6_i()];
            if(!_loc3_)
            {
               addr003d:
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr003d);
      }
      
      private function _QMConsole_ToggleButton6_i() : ToggleButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ToggleButton = new ToggleButton();
         if(!_loc2_)
         {
            _loc1_.toolTip = "Will trace all unlokced features";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.label = "trace features";
               if(_loc3_)
               {
                  _loc1_.id = "traceFeatureStats";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              addr0087:
                              this.traceFeatureStats = _loc1_;
                              if(_loc3_ || Boolean(this))
                              {
                                 addr0099:
                                 BindingManager.executeBindings(this,"traceFeatureStats",this.traceFeatureStats);
                              }
                           }
                        }
                        §§goto(addr00a6);
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr0099);
               }
               §§goto(addr00a6);
            }
            §§goto(addr0087);
         }
         addr00a6:
         return _loc1_;
      }
      
      private function _QMConsole_VGroup4_i() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.mxmlContent = [this._QMConsole_HGroup5_c(),this._QMConsole_ProgressBar1_i()];
            if(!_loc3_)
            {
               _loc1_.id = "_QMConsole_VGroup4";
               if(_loc2_ || _loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        §§goto(addr006e);
                     }
                  }
               }
            }
            §§goto(addr007f);
         }
         addr006e:
         _loc1_.document = this;
         if(_loc2_ || _loc2_)
         {
            addr007f:
            this._QMConsole_VGroup4 = _loc1_;
            if(_loc2_)
            {
               BindingManager.executeBindings(this,"_QMConsole_VGroup4",this._QMConsole_VGroup4);
            }
         }
         return _loc1_;
      }
      
      private function _QMConsole_HGroup5_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.mxmlContent = [this._QMConsole_TextInput1_i(),this._QMConsole_ToggleButton7_i(),this._QMConsole_ToggleButton8_i(),this._QMConsole_Button8_i()];
            if(_loc2_)
            {
               §§goto(addr004b);
            }
            §§goto(addr0057);
         }
         addr004b:
         if(!_loc1_.document)
         {
            if(!_loc3_)
            {
               addr0057:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _QMConsole_TextInput1_i() : TextInput
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:TextInput = new TextInput();
         if(_loc3_ || _loc3_)
         {
            _loc1_.toolTip = "Enter amount of desired spins";
            if(_loc3_)
            {
               _loc1_.restrict = "1234567890";
               if(!_loc2_)
               {
                  §§goto(addr004e);
               }
               §§goto(addr008f);
            }
            §§goto(addr0085);
         }
         addr004e:
         _loc1_.id = "wheelspins";
         if(_loc3_)
         {
            if(!_loc1_.document)
            {
               if(!(_loc2_ && _loc3_))
               {
                  §§goto(addr007c);
               }
               §§goto(addr008f);
            }
            §§goto(addr0085);
         }
         addr007c:
         _loc1_.document = this;
         if(!_loc2_)
         {
            addr0085:
            this.wheelspins = _loc1_;
            if(_loc3_)
            {
               addr008f:
               BindingManager.executeBindings(this,"wheelspins",this.wheelspins);
            }
         }
         return _loc1_;
      }
      
      private function _QMConsole_ToggleButton7_i() : ToggleButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ToggleButton = new ToggleButton();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.toolTip = "Use Bonus Wheel?";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.label = "buff";
               if(!_loc2_)
               {
                  _loc1_.id = "usewheelbuff";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr0083:
                           _loc1_.document = this;
                           if(_loc3_ || _loc3_)
                           {
                              §§goto(addr0094);
                           }
                        }
                        §§goto(addr009e);
                     }
                     addr0094:
                     this.usewheelbuff = _loc1_;
                     if(_loc3_)
                     {
                        addr009e:
                        BindingManager.executeBindings(this,"usewheelbuff",this.usewheelbuff);
                     }
                     §§goto(addr00ab);
                  }
               }
               addr00ab:
               return _loc1_;
            }
            §§goto(addr0083);
         }
         §§goto(addr009e);
      }
      
      private function _QMConsole_ToggleButton8_i() : ToggleButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ToggleButton = new ToggleButton();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.toolTip = "Compare Bags?";
            if(_loc2_)
            {
               _loc1_.label = "bags";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.id = "compareBags";
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr0086:
                              this.compareBags = _loc1_;
                              if(_loc2_)
                              {
                                 addr0090:
                                 BindingManager.executeBindings(this,"compareBags",this.compareBags);
                              }
                           }
                           §§goto(addr009d);
                        }
                        §§goto(addr0090);
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr009d);
            }
            §§goto(addr0086);
         }
         addr009d:
         return _loc1_;
      }
      
      private function _QMConsole_Button8_i() : Button
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Button = new Button();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.toolTip = "Will remove all Spin and Bonus Tokens!!";
            if(_loc3_)
            {
               _loc1_.label = "Spin Wheel";
               if(!_loc2_)
               {
                  _loc1_.id = "wheelSniffer";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0061:
                           _loc1_.document = this;
                           if(_loc3_ || _loc3_)
                           {
                              addr007e:
                              this.wheelSniffer = _loc1_;
                              if(_loc3_ || Boolean(this))
                              {
                                 addr0090:
                                 BindingManager.executeBindings(this,"wheelSniffer",this.wheelSniffer);
                              }
                           }
                        }
                        return _loc1_;
                     }
                  }
               }
               §§goto(addr007e);
            }
            §§goto(addr0061);
         }
         §§goto(addr0090);
      }
      
      private function _QMConsole_ProgressBar1_i() : ProgressBar
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ProgressBar = new ProgressBar();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.label = "";
            if(!_loc3_)
            {
               _loc1_.mode = "manual";
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.setStyle("labelWidth",0);
                  if(_loc2_)
                  {
                     addr0065:
                     _loc1_.id = "progressBar";
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr0078:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && Boolean(this)))
                           {
                              _loc1_.document = this;
                              if(_loc2_ || _loc2_)
                              {
                                 §§goto(addr00a8);
                              }
                              §§goto(addr00ba);
                           }
                        }
                     }
                     addr00a8:
                     this.progressBar = _loc1_;
                     if(!(_loc3_ && _loc2_))
                     {
                        addr00ba:
                        BindingManager.executeBindings(this,"progressBar",this.progressBar);
                     }
                     §§goto(addr00c7);
                  }
                  §§goto(addr00ba);
               }
               addr00c7:
               return _loc1_;
            }
            §§goto(addr0065);
         }
         §§goto(addr0078);
      }
      
      private function _QMConsole_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(_loc3_ || _loc3_)
         {
            §§pop().§§slot[1] = [];
            if(_loc3_ || Boolean(this))
            {
               §§push(§§newactivation());
               if(!(_loc2_ && Boolean(this)))
               {
                  §§push(§§pop().§§slot[1]);
                  if(_loc3_)
                  {
                     §§push(0);
                     if(!_loc2_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():Boolean
                        {
                           return inventorySnapshot.selected;
                        },null,"divInventoryButton.enabled");
                        if(_loc3_ || _loc2_)
                        {
                           §§goto(addr0074);
                        }
                        §§goto(addr017b);
                     }
                     §§goto(addr0292);
                  }
                  §§goto(addr0290);
               }
               §§goto(addr0147);
            }
            addr0074:
            §§push(§§newactivation());
            if(!(_loc2_ && _loc1_))
            {
               §§push(§§pop().§§slot[1]);
               if(_loc3_)
               {
                  §§push(1);
                  if(!(_loc2_ && _loc1_))
                  {
                     §§pop()[§§pop()] = new Binding(this,function():Boolean
                     {
                        return showmacros.selected;
                     },null,"_QMConsole_VGroup2.visible");
                     if(!(_loc2_ && Boolean(this)))
                     {
                        §§push(§§newactivation());
                        if(!(_loc2_ && _loc1_))
                        {
                           §§goto(addr00c6);
                        }
                        §§goto(addr02a5);
                     }
                     §§goto(addr01c6);
                  }
                  §§goto(addr021e);
               }
               §§goto(addr0156);
            }
            addr00c6:
            §§push(§§pop().§§slot[1]);
            if(_loc3_)
            {
               §§push(2);
               if(_loc3_)
               {
                  §§pop()[§§pop()] = new Binding(this,function():Boolean
                  {
                     return showmacros.selected;
                  },null,"_QMConsole_VGroup2.includeInLayout");
                  if(_loc3_ || _loc1_)
                  {
                     §§push(§§newactivation());
                     if(!(_loc2_ && Boolean(this)))
                     {
                        §§push(§§pop().§§slot[1]);
                        if(_loc3_ || Boolean(this))
                        {
                           §§push(3);
                           if(_loc3_)
                           {
                              §§pop()[§§pop()] = new Binding(this,function():Boolean
                              {
                                 return showFeatrueDebug.selected;
                              },null,"_QMConsole_VGroup3.visible");
                              if(_loc3_)
                              {
                                 §§push(§§newactivation());
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr0147:
                                    §§push(§§pop().§§slot[1]);
                                    if(_loc3_ || _loc3_)
                                    {
                                       addr0156:
                                       §§push(4);
                                       if(_loc3_)
                                       {
                                          addr015d:
                                          §§pop()[§§pop()] = new Binding(this,function():Boolean
                                          {
                                             return showFeatrueDebug.selected;
                                          },null,"_QMConsole_VGroup3.includeInLayout");
                                          if(_loc3_ || _loc1_)
                                          {
                                             §§goto(addr017b);
                                          }
                                          §§goto(addr01c6);
                                       }
                                       §§goto(addr0259);
                                    }
                                    §§goto(addr0290);
                                 }
                                 §§goto(addr018a);
                              }
                              addr017b:
                              §§push(§§newactivation());
                              if(_loc3_ || _loc3_)
                              {
                                 addr018a:
                                 §§push(§§pop().§§slot[1]);
                                 if(_loc3_ || _loc1_)
                                 {
                                    §§push(5);
                                    if(_loc3_ || Boolean(this))
                                    {
                                       §§pop()[§§pop()] = new Binding(this,function():Boolean
                                       {
                                          return showwheel.selected;
                                       },null,"_QMConsole_VGroup4.visible");
                                       if(_loc3_ || _loc2_)
                                       {
                                          addr01c6:
                                          §§push(§§newactivation());
                                          if(!_loc2_)
                                          {
                                             §§push(§§pop().§§slot[1]);
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                §§push(6);
                                                if(_loc3_)
                                                {
                                                   §§pop()[§§pop()] = new Binding(this,function():Boolean
                                                   {
                                                      return showwheel.selected;
                                                   },null,"_QMConsole_VGroup4.includeInLayout");
                                                   if(!_loc2_)
                                                   {
                                                      addr01f9:
                                                      §§push(§§newactivation());
                                                      if(_loc3_)
                                                      {
                                                         addr0200:
                                                         §§push(§§pop().§§slot[1]);
                                                         if(!(_loc2_ && _loc3_))
                                                         {
                                                            addr020f:
                                                            §§push(7);
                                                            if(!(_loc2_ && Boolean(this)))
                                                            {
                                                               addr021e:
                                                               §§pop()[§§pop()] = new Binding(this,function():Boolean
                                                               {
                                                                  return wheelspins.text.length > 0;
                                                               },null,"usewheelbuff.enabled");
                                                               if(!_loc2_)
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(_loc3_ || _loc3_)
                                                                  {
                                                                     §§goto(addr0243);
                                                                  }
                                                                  §§goto(addr02a5);
                                                               }
                                                               §§goto(addr02a3);
                                                            }
                                                            §§goto(addr0259);
                                                         }
                                                         §§goto(addr0290);
                                                      }
                                                      §§goto(addr02a5);
                                                   }
                                                   §§goto(addr0282);
                                                }
                                                §§goto(addr021e);
                                             }
                                             §§goto(addr0290);
                                          }
                                          §§goto(addr02a5);
                                       }
                                       §§goto(addr0282);
                                    }
                                    §§goto(addr0259);
                                 }
                                 §§goto(addr020f);
                              }
                              addr0243:
                              §§push(§§pop().§§slot[1]);
                              if(!_loc2_)
                              {
                                 §§push(8);
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    addr0259:
                                    §§pop()[§§pop()] = new Binding(this,function():Boolean
                                    {
                                       return wheelspins.text.length > 0;
                                    },null,"compareBags.enabled");
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       addr0282:
                                       §§push(§§newactivation());
                                       if(_loc3_)
                                       {
                                          §§goto(addr02a7);
                                       }
                                       §§goto(addr02a5);
                                    }
                                    §§goto(addr02a3);
                                 }
                                 §§goto(addr0292);
                              }
                              §§goto(addr02a7);
                           }
                           §§goto(addr015d);
                        }
                        §§goto(addr0156);
                     }
                     §§goto(addr0200);
                  }
                  §§goto(addr01f9);
               }
               §§goto(addr0259);
            }
            addr02a7:
            §§goto(addr0289);
         }
         addr0289:
         §§push(§§pop().§§slot[1]);
         if(!_loc2_)
         {
            addr0292:
            §§pop()[9] = new Binding(this,function():Boolean
            {
               return wheelspins.text.length > 0;
            },null,"wheelSniffer.enabled");
            addr02a5:
            addr02a3:
            §§push(result);
            addr0290:
         }
         return §§pop();
      }
      
      [Bindable(event="propertyChange")]
      public function get cleanBoulder() : Button
      {
         return this._1665131364cleanBoulder;
      }
      
      public function set cleanBoulder(param1:Button) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1665131364cleanBoulder;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1665131364cleanBoulder = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cleanBoulder",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr006f);
            }
         }
         addr007e:
      }
      
      [Bindable(event="propertyChange")]
      public function get compareBags() : ToggleButton
      {
         return this._412894224compareBags;
      }
      
      public function set compareBags(param1:ToggleButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._412894224compareBags;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._412894224compareBags = param1;
                  if(!_loc3_)
                  {
                     addr0042:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0052:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"compareBags",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0061);
               }
               §§goto(addr0042);
            }
            addr0061:
            return;
         }
         §§goto(addr0052);
      }
      
      [Bindable(event="propertyChange")]
      public function get console() : RichEditableText
      {
         return this._951510359console;
      }
      
      public function set console(param1:RichEditableText) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._951510359console;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._951510359console = param1;
                  addr0048:
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"console",_loc2_,param1));
                        }
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr0076);
               }
            }
            addr0085:
            return;
         }
         §§goto(addr0048);
      }
      
      [Bindable(event="propertyChange")]
      public function get constructAll() : Button
      {
         return this._1995998646constructAll;
      }
      
      public function set constructAll(param1:Button) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1995998646constructAll;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1995998646constructAll = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0054:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"constructAll",_loc2_,param1));
                        }
                     }
                     §§goto(addr0063);
                  }
               }
               §§goto(addr0054);
            }
            addr0063:
            return;
         }
         §§goto(addr0054);
      }
      
      [Bindable(event="propertyChange")]
      public function get divInventoryButton() : Button
      {
         return this._768939741divInventoryButton;
      }
      
      public function set divInventoryButton(param1:Button) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._768939741divInventoryButton;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._768939741divInventoryButton = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     addr006a:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0079:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"divInventoryButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0088);
               }
               §§goto(addr0079);
            }
            addr0088:
            return;
         }
         §§goto(addr006a);
      }
      
      [Bindable(event="propertyChange")]
      public function get divResourceButton() : ToggleButton
      {
         return this._390042577divResourceButton;
      }
      
      public function set divResourceButton(param1:ToggleButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._390042577divResourceButton;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  addr0048:
                  this._390042577divResourceButton = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           addr007d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"divResourceButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr008c);
                  }
                  §§goto(addr007d);
               }
            }
            addr008c:
            return;
         }
         §§goto(addr0048);
      }
      
      [Bindable(event="propertyChange")]
      public function get inagurateAll() : Button
      {
         return this._235254679inagurateAll;
      }
      
      public function set inagurateAll(param1:Button) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._235254679inagurateAll;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  addr004e:
                  this._235254679inagurateAll = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0068:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inagurateAll",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0077);
               }
               §§goto(addr0068);
            }
            addr0077:
            return;
         }
         §§goto(addr004e);
      }
      
      [Bindable(event="propertyChange")]
      public function get inventorySnapshot() : ToggleButton
      {
         return this._64239424inventorySnapshot;
      }
      
      public function set inventorySnapshot(param1:ToggleButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._64239424inventorySnapshot;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._64239424inventorySnapshot = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     §§goto(addr005c);
                  }
                  §§goto(addr0073);
               }
               addr005c:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     addr0073:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inventorySnapshot",_loc2_,param1));
                  }
               }
               §§goto(addr0082);
            }
         }
         addr0082:
      }
      
      [Bindable(event="propertyChange")]
      public function get progressBar() : ProgressBar
      {
         return this._1131509414progressBar;
      }
      
      public function set progressBar(param1:ProgressBar) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1131509414progressBar;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._1131509414progressBar = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressBar",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0083);
               }
               §§goto(addr0074);
            }
            addr0083:
            return;
         }
         §§goto(addr0074);
      }
      
      [Bindable(event="propertyChange")]
      public function get repairAll() : Button
      {
         return this._762537260repairAll;
      }
      
      public function set repairAll(param1:Button) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._762537260repairAll;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._762537260repairAll = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"repairAll",_loc2_,param1));
                        }
                     }
                     §§goto(addr0084);
                  }
               }
               §§goto(addr0075);
            }
            addr0084:
            return;
         }
         §§goto(addr005d);
      }
      
      [Bindable(event="propertyChange")]
      public function get showFeatrueDebug() : ToggleButton
      {
         return this._1529240512showFeatrueDebug;
      }
      
      public function set showFeatrueDebug(param1:ToggleButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1529240512showFeatrueDebug;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1529240512showFeatrueDebug = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showFeatrueDebug",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showmacros() : ToggleButton
      {
         return this._1509476196showmacros;
      }
      
      public function set showmacros(param1:ToggleButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1509476196showmacros;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._1509476196showmacros = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr0061:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showmacros",_loc2_,param1));
                        }
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr0078);
               }
            }
            addr0087:
            return;
         }
         §§goto(addr0061);
      }
      
      [Bindable(event="propertyChange")]
      public function get showwheel() : ToggleButton
      {
         return this._1881524610showwheel;
      }
      
      public function set showwheel(param1:ToggleButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1881524610showwheel;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1881524610showwheel = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr0073:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showwheel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0082);
               }
               §§goto(addr0073);
            }
            addr0082:
            return;
         }
         §§goto(addr0073);
      }
      
      [Bindable(event="propertyChange")]
      public function get traceFeatureStats() : ToggleButton
      {
         return this._809744082traceFeatureStats;
      }
      
      public function set traceFeatureStats(param1:ToggleButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._809744082traceFeatureStats;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._809744082traceFeatureStats = param1;
                  if(!_loc4_)
                  {
                     addr0042:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0052:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"traceFeatureStats",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0061);
               }
               §§goto(addr0052);
            }
            addr0061:
            return;
         }
         §§goto(addr0042);
      }
      
      [Bindable(event="propertyChange")]
      public function get unlockAllExpansions() : Button
      {
         return this._1450144975unlockAllExpansions;
      }
      
      public function set unlockAllExpansions(param1:Button) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1450144975unlockAllExpansions;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1450144975unlockAllExpansions = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"unlockAllExpansions",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get usewheelbuff() : ToggleButton
      {
         return this._2021615751usewheelbuff;
      }
      
      public function set usewheelbuff(param1:ToggleButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2021615751usewheelbuff;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._2021615751usewheelbuff = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"usewheelbuff",_loc2_,param1));
                        }
                     }
                     §§goto(addr0073);
                  }
               }
               §§goto(addr0064);
            }
            addr0073:
            return;
         }
         §§goto(addr0064);
      }
      
      [Bindable(event="propertyChange")]
      public function get wheelSniffer() : Button
      {
         return this._1413042176wheelSniffer;
      }
      
      public function set wheelSniffer(param1:Button) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1413042176wheelSniffer;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._1413042176wheelSniffer = param1;
                  if(!_loc4_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"wheelSniffer",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0057);
      }
      
      [Bindable(event="propertyChange")]
      public function get wheelspins() : TextInput
      {
         return this._1668363766wheelspins;
      }
      
      public function set wheelspins(param1:TextInput) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1668363766wheelspins;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  addr003e:
                  this._1668363766wheelspins = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"wheelspins",_loc2_,param1));
                        }
                     }
                     §§goto(addr0083);
                  }
                  §§goto(addr0074);
               }
            }
            addr0083:
            return;
         }
         §§goto(addr003e);
      }
   }
}

