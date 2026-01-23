package net.bigpoint.cityrama.view.emergencyBook.ui.skins
{
   import com.greensock.TweenMax;
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
   import mx.core.IStateClient2;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.emergencyBook.ui.components.EmergencySuccessBarComponent;
   import spark.components.Button;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class EmergencySuccessBarSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _686650417advanceBar:Group;
      
      private var _940952062blendBar:HGroup;
      
      private var _1367696671capBar:Group;
      
      private var _1747238253capBarMask:HGroup;
      
      private var _1321302782capBubble:Button;
      
      private var _1494859114capBubbleLabel:LocaLabel;
      
      private var _3226745icon:BriskImageDynaLib;
      
      private var _1184053038labelDisplay:LocaLabel;
      
      private var _1131509414progressBar:Group;
      
      private var _187521914stripeBar:HGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:EmergencySuccessBarComponent;
      
      public function EmergencySuccessBarSkin()
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
         if(!(_loc3_ && _loc2_))
         {
            §§push(null);
            if(_loc4_ || _loc2_)
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc4_)
               {
                  §§push(§§newactivation());
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§push(null);
                     if(_loc4_)
                     {
                        §§pop().§§slot[3] = §§pop();
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(§§newactivation());
                           if(!_loc3_)
                           {
                              addr0070:
                              §§pop().§§slot[5] = null;
                              if(_loc4_ || _loc3_)
                              {
                                 this.mx_internal::_bindings = [];
                                 if(!_loc3_)
                                 {
                                    addr008d:
                                    this.mx_internal::_watchers = [];
                                    if(_loc4_ || _loc3_)
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(!(_loc3_ && _loc1_))
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(!_loc3_)
                                          {
                                             super();
                                             if(_loc4_)
                                             {
                                                mx_internal::_document = this;
                                                if(_loc4_ || _loc1_)
                                                {
                                                   addr00e3:
                                                   §§push(§§newactivation());
                                                   if(_loc4_)
                                                   {
                                                      §§pop().§§slot[1] = this._EmergencySuccessBarSkin_bindingsSetup();
                                                      if(_loc4_)
                                                      {
                                                         addr00fb:
                                                         §§push(§§newactivation());
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            addr010b:
                                                            §§pop().§§slot[2] = [];
                                                            if(_loc4_ || Boolean(this))
                                                            {
                                                               addr011f:
                                                               §§push(§§newactivation());
                                                               if(_loc4_)
                                                               {
                                                                  §§pop().§§slot[3] = this;
                                                                  if(_loc4_ || _loc2_)
                                                                  {
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           addr0147:
                                                                           §§push(§§newactivation());
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_emergencyBook_ui_skins_EmergencySuccessBarSkinWatcherSetupUtil");
                                                                              if(_loc4_ || _loc2_)
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(!(_loc3_ && _loc1_))
                                                                                 {
                                                                                    addr0185:
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       addr019c:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return EmergencySuccessBarSkin[param1];
                                                                                       },bindings,watchers);
                                                                                       if(_loc4_ || _loc1_)
                                                                                       {
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             addr01e8:
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(!(_loc3_ && _loc2_))
                                                                                             {
                                                                                                addr0216:
                                                                                                this.mxmlContent = [this._EmergencySuccessBarSkin_StickyNoteComponent1_c(),this._EmergencySuccessBarSkin_Group1_c()];
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   addr022d:
                                                                                                   this.currentState = "normal";
                                                                                                   if(_loc4_ || Boolean(this))
                                                                                                   {
                                                                                                      addr0242:
                                                                                                      this.addEventListener("creationComplete",this.___EmergencySuccessBarSkin_SparkSkin1_creationComplete);
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         states = [new State({
                                                                                                            "name":"normal",
                                                                                                            "overrides":[]
                                                                                                         }),new State({
                                                                                                            "name":"disabled",
                                                                                                            "overrides":[]
                                                                                                         })];
                                                                                                         if(!(_loc3_ && _loc1_))
                                                                                                         {
                                                                                                            addr028b:
                                                                                                            i = 0;
                                                                                                            addr0289:
                                                                                                         }
                                                                                                      }
                                                                                                      var _temp_20:*;
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
                                                                                                                  if(_loc3_ && Boolean(this))
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(!(_loc3_ && _loc1_))
                                                                                                                  {
                                                                                                                     §§push(§§pop().§§slot[4]);
                                                                                                                     if(_loc4_ || _loc1_)
                                                                                                                     {
                                                                                                                        §§push(uint(§§pop() + 1));
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           continue loop2;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§push(§§newactivation());
                                                                                                                     if(!_loc3_)
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
                                                                                                      while(var _temp_20:* = §§pop(), §§pop().§§slot[4] = _temp_20, !_loc3_);
                                                                                                      
                                                                                                      return;
                                                                                                      addr02f4:
                                                                                                   }
                                                                                                   §§goto(addr0289);
                                                                                                }
                                                                                                §§goto(addr0242);
                                                                                             }
                                                                                             §§goto(addr02f4);
                                                                                          }
                                                                                          §§goto(addr0216);
                                                                                       }
                                                                                       §§goto(addr02f4);
                                                                                    }
                                                                                    §§goto(addr01e8);
                                                                                 }
                                                                                 §§goto(addr028b);
                                                                              }
                                                                              §§goto(addr01e8);
                                                                           }
                                                                           §§goto(addr028b);
                                                                        }
                                                                        §§goto(addr022d);
                                                                     }
                                                                     §§goto(addr019c);
                                                                  }
                                                                  §§goto(addr0147);
                                                               }
                                                               §§goto(addr0185);
                                                            }
                                                            §§goto(addr022d);
                                                         }
                                                         §§goto(addr028b);
                                                      }
                                                      §§goto(addr02f4);
                                                   }
                                                   §§goto(addr010b);
                                                }
                                                §§goto(addr011f);
                                             }
                                             §§goto(addr019c);
                                          }
                                          §§goto(addr00e3);
                                       }
                                       §§goto(addr02f4);
                                    }
                                    §§goto(addr0147);
                                 }
                                 §§goto(addr00fb);
                              }
                              §§goto(addr0147);
                           }
                           §§goto(addr010b);
                        }
                        §§goto(addr019c);
                     }
                     §§goto(addr0070);
                  }
                  §§goto(addr0185);
               }
               §§goto(addr008d);
            }
            §§goto(addr0070);
         }
         §§goto(addr0185);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            EmergencySuccessBarSkin._watcherSetupUtil = param1;
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
            if(_loc3_ || Boolean(param1))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || _loc2_)
                  {
                     §§goto(addr0057);
                  }
               }
               §§goto(addr0065);
            }
            addr0057:
            return;
         }
         addr0065:
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super.initialize();
         }
      }
      
      private function handleCreationComplete() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:BriskImageDynaLib = null;
         var _loc1_:* = 53236;
         if(!_loc4_)
         {
            §§push(this.hostComponent);
            if(_loc5_ || _loc2_)
            {
               §§push("tint");
               if(!_loc4_)
               {
                  if(§§pop().getStyle(§§pop()) != null)
                  {
                     if(_loc5_)
                     {
                        §§goto(addr0053);
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr0068);
               }
               addr0053:
               §§goto(addr0050);
            }
            addr0050:
            §§goto(addr004d);
         }
         addr004d:
         §§push(this.hostComponent.getStyle("tint") as uint);
         if(_loc5_)
         {
            _loc1_ = §§pop();
            if(_loc5_)
            {
               addr0068:
               TweenMax.to(this.blendBar,0,{"tint":_loc1_});
            }
            addr0087:
            §§push(0);
         }
         var _loc2_:* = §§pop();
         while(_loc2_ < this.stripeBar.width)
         {
            _loc3_ = new BriskImageDynaLib();
            if(_loc5_ || Boolean(_loc1_))
            {
               _loc3_.dynaLibName = "gui_popups_emergencyBook";
               if(!(_loc4_ && Boolean(_loc3_)))
               {
                  _loc3_.dynaBmpSourceName = "infrabar_blocked";
                  if(_loc4_ && Boolean(_loc3_))
                  {
                     continue;
                  }
               }
            }
            this.stripeBar.addElement(_loc3_);
            if(!(_loc4_ && Boolean(this)))
            {
               §§push(_loc2_);
               if(!(_loc4_ && Boolean(_loc1_)))
               {
                  §§push(§§pop() + 11);
                  if(!_loc4_)
                  {
                     §§push(§§pop());
                  }
               }
               _loc2_ = §§pop();
            }
         }
      }
      
      private function handleBubbleClicked() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            dispatchEvent(new Event(EmergencySuccessBarComponent.BUBBLE_CLICKED));
         }
      }
      
      private function _EmergencySuccessBarSkin_StickyNoteComponent1_c() : StickyNoteComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(!_loc3_)
         {
            _loc1_.tapeRight = true;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.tapeLeft = true;
               if(!_loc3_)
               {
                  _loc1_.styleName = "blue";
                  if(_loc2_)
                  {
                     addr0056:
                     _loc1_.width = 526;
                     if(!_loc3_)
                     {
                        _loc1_.height = 80;
                        if(_loc2_ || _loc3_)
                        {
                           _loc1_.bottom = -6;
                           addr0073:
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr0091:
                              if(!_loc1_.document)
                              {
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr00a5:
                                    _loc1_.document = this;
                                 }
                              }
                              §§goto(addr00a9);
                           }
                        }
                        §§goto(addr00a5);
                     }
                  }
                  addr00a9:
                  return _loc1_;
               }
               §§goto(addr0091);
            }
            §§goto(addr0056);
         }
         §§goto(addr0073);
      }
      
      private function _EmergencySuccessBarSkin_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc3_)
         {
            _loc1_.right = 34;
            if(_loc2_ || _loc2_)
            {
               _loc1_.left = 20;
               if(!_loc3_)
               {
                  _loc1_.percentWidth = 100;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr006f:
                     _loc1_.percentHeight = 100;
                     if(!_loc3_)
                     {
                        _loc1_.mxmlContent = [this._EmergencySuccessBarSkin_Group2_c(),this._EmergencySuccessBarSkin_Group3_c()];
                        if(!_loc3_)
                        {
                           addr008f:
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr009f);
                     }
                     §§goto(addr008f);
                  }
                  addr009f:
                  return _loc1_;
               }
               §§goto(addr008f);
            }
            §§goto(addr006f);
         }
         §§goto(addr008f);
      }
      
      private function _EmergencySuccessBarSkin_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.bottom = 44;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.percentWidth = 100;
               if(_loc3_)
               {
                  addr0054:
                  _loc1_.mxmlContent = [this._EmergencySuccessBarSkin_HGroup1_c(),this._EmergencySuccessBarSkin_LocaLabel1_i()];
                  if(_loc3_)
                  {
                     §§goto(addr006a);
                  }
               }
               §§goto(addr0076);
            }
            §§goto(addr0054);
         }
         addr006a:
         if(!_loc1_.document)
         {
            if(!_loc2_)
            {
               addr0076:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.gap = 0;
            if(_loc3_)
            {
               §§goto(addr0032);
            }
            §§goto(addr0098);
         }
         addr0032:
         _loc1_.left = 5;
         if(_loc3_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               §§goto(addr005a);
            }
            §§goto(addr0098);
         }
         addr005a:
         _loc1_.verticalAlign = "middle";
         if(!_loc2_)
         {
            _loc1_.horizontalAlign = "center";
            if(_loc3_)
            {
               _loc1_.mxmlContent = [this._EmergencySuccessBarSkin_BriskImageDynaLib1_c(),this._EmergencySuccessBarSkin_BriskImageDynaLib2_c(),this._EmergencySuccessBarSkin_BriskImageDynaLib3_c()];
               §§goto(addr006f);
            }
            §§goto(addr0098);
         }
         addr006f:
         if(!_loc2_)
         {
            addr0098:
            if(!_loc1_.document)
            {
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "bluemarker_small_left";
               if(_loc2_)
               {
                  §§goto(addr0055);
               }
            }
            §§goto(addr0069);
         }
         addr0055:
         if(!_loc1_.document)
         {
            if(_loc2_ || Boolean(_loc1_))
            {
               addr0069:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.dynaBmpSourceName = "bluemarker_small_middle";
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc3_)
                  {
                     §§goto(addr0069);
                  }
                  §§goto(addr007d);
               }
               addr0069:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr007d:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0081);
            }
         }
         addr0081:
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "bluemarker_small_right";
               if(!(_loc2_ && Boolean(this)))
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr005a:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr005e);
               }
               §§goto(addr005a);
            }
            addr005e:
            return _loc1_;
         }
         §§goto(addr005a);
      }
      
      private function _EmergencySuccessBarSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.verticalCenter = 0;
               if(!_loc2_)
               {
                  §§goto(addr003d);
               }
               §§goto(addr005b);
            }
            §§goto(addr00c0);
         }
         addr003d:
         _loc1_.left = 40;
         if(_loc3_ || Boolean(this))
         {
            addr005b:
            _loc1_.styleName = "emergencySuccessBarLabel";
            if(_loc3_ || _loc3_)
            {
               _loc1_.maxDisplayedLines = 1;
               if(!_loc2_)
               {
                  _loc1_.id = "labelDisplay";
                  if(!_loc2_)
                  {
                     addr0084:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr0090:
                           _loc1_.document = this;
                           if(_loc3_ || Boolean(this))
                           {
                              addr00ae:
                              this.labelDisplay = _loc1_;
                              if(_loc3_ || _loc2_)
                              {
                                 addr00c0:
                                 BindingManager.executeBindings(this,"labelDisplay",this.labelDisplay);
                              }
                           }
                        }
                        §§goto(addr00cd);
                     }
                  }
                  §§goto(addr00ae);
               }
               §§goto(addr0084);
            }
            §§goto(addr0090);
         }
         addr00cd:
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.bottom = 4;
            if(_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.mxmlContent = [this._EmergencySuccessBarSkin_HGroup2_c(),this._EmergencySuccessBarSkin_HGroup3_i(),this._EmergencySuccessBarSkin_HGroup4_c(),this._EmergencySuccessBarSkin_HGroup6_c(),this._EmergencySuccessBarSkin_BriskImageDynaLib16_i(),this._EmergencySuccessBarSkin_HGroup9_c(),this._EmergencySuccessBarSkin_HGroup10_c(),this._EmergencySuccessBarSkin_Group8_c(),this._EmergencySuccessBarSkin_VGroup1_c()];
                  addr004e:
                  if(!_loc2_)
                  {
                     §§goto(addr009a);
                  }
                  §§goto(addr00ae);
               }
               addr009a:
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc2_)
                  {
                     addr00ae:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr00b2);
            }
            addr00b2:
            return _loc1_;
         }
         §§goto(addr004e);
      }
      
      private function _EmergencySuccessBarSkin_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.left = 20;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.right = 30;
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.verticalCenter = 0;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc1_.gap = 0;
                        if(!_loc2_)
                        {
                           _loc1_.mxmlContent = [this._EmergencySuccessBarSkin_BriskImageDynaLib4_c(),this._EmergencySuccessBarSkin_BriskImageDynaLib5_c(),this._EmergencySuccessBarSkin_BriskImageDynaLib6_c()];
                           addr007f:
                           if(!_loc2_)
                           {
                              addr00a9:
                              if(!_loc1_.document)
                              {
                                 if(_loc3_ || _loc2_)
                                 {
                                    addr00bd:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                        }
                        §§goto(addr00c1);
                     }
                     §§goto(addr00a9);
                  }
                  §§goto(addr00bd);
               }
               §§goto(addr00c1);
            }
            §§goto(addr007f);
         }
         addr00c1:
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "infrabar_bg_left";
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        addr006b:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr006f);
               }
            }
            §§goto(addr006b);
         }
         addr006f:
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "infrabar_bg_middle";
               if(!_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(!(_loc2_ && _loc3_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr0073:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr0077);
               }
            }
            §§goto(addr0073);
         }
         addr0077:
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(_loc2_ || _loc3_)
            {
               _loc1_.dynaBmpSourceName = "infrabar_bg_right";
               if(_loc2_)
               {
                  addr005f:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr006b:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr005f);
         }
         §§goto(addr006b);
      }
      
      private function _EmergencySuccessBarSkin_HGroup3_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.left = 20;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.right = 30;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr005d:
                     _loc1_.verticalCenter = 0;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr006f:
                        _loc1_.gap = 0;
                        if(!_loc2_)
                        {
                           addr0079:
                           _loc1_.id = "stripeBar";
                           if(_loc3_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc3_)
                                 {
                                    addr009c:
                                    _loc1_.document = this;
                                    if(_loc3_)
                                    {
                                       addr00a5:
                                       this.stripeBar = _loc1_;
                                       if(_loc3_ || Boolean(_loc1_))
                                       {
                                          addr00b7:
                                          BindingManager.executeBindings(this,"stripeBar",this.stripeBar);
                                       }
                                    }
                                 }
                                 return _loc1_;
                              }
                              §§goto(addr00a5);
                           }
                           §§goto(addr009c);
                        }
                        §§goto(addr00a5);
                     }
                     §§goto(addr0079);
                  }
                  §§goto(addr009c);
               }
               §§goto(addr005d);
            }
            §§goto(addr006f);
         }
         §§goto(addr00b7);
      }
      
      private function _EmergencySuccessBarSkin_HGroup4_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.left = 20;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.right = 30;
                  if(_loc2_)
                  {
                     _loc1_.paddingLeft = 3;
                     if(_loc2_)
                     {
                        _loc1_.paddingRight = 3;
                        if(_loc2_ || Boolean(this))
                        {
                           addr0077:
                           _loc1_.verticalCenter = 0;
                           if(!_loc3_)
                           {
                              _loc1_.mxmlContent = [this._EmergencySuccessBarSkin_Group4_i()];
                              if(!_loc3_)
                              {
                                 addr009c:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc2_ || Boolean(this))
                                    {
                                       addr00b0:
                                       _loc1_.document = this;
                                    }
                                 }
                              }
                              §§goto(addr00b4);
                           }
                           §§goto(addr00b0);
                        }
                        §§goto(addr00b4);
                     }
                     §§goto(addr009c);
                  }
                  §§goto(addr0077);
               }
            }
            addr00b4:
            return _loc1_;
         }
         §§goto(addr0077);
      }
      
      private function _EmergencySuccessBarSkin_Group4_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.verticalCenter = 0;
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._EmergencySuccessBarSkin_HGroup5_c()];
                  if(!(_loc3_ && _loc2_))
                  {
                     addr0056:
                     _loc1_.id = "advanceBar";
                     if(_loc2_ || _loc3_)
                     {
                        addr0069:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              addr0088:
                              _loc1_.document = this;
                              if(_loc2_)
                              {
                                 addr0091:
                                 this.advanceBar = _loc1_;
                                 if(_loc2_)
                                 {
                                    addr009b:
                                    BindingManager.executeBindings(this,"advanceBar",this.advanceBar);
                                 }
                                 §§goto(addr00a8);
                              }
                              §§goto(addr009b);
                           }
                           addr00a8:
                           return _loc1_;
                        }
                        §§goto(addr0091);
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr0069);
               }
               §§goto(addr0056);
            }
         }
         §§goto(addr0069);
      }
      
      private function _EmergencySuccessBarSkin_HGroup5_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.gap = 0;
            if(!_loc3_)
            {
               _loc1_.verticalCenter = 0;
               if(_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc3_)
                  {
                     _loc1_.mxmlContent = [this._EmergencySuccessBarSkin_BriskImageDynaLib7_c(),this._EmergencySuccessBarSkin_BriskImageDynaLib8_c(),this._EmergencySuccessBarSkin_BriskImageDynaLib9_c()];
                     §§goto(addr0050);
                  }
                  §§goto(addr007f);
               }
               addr0050:
               if(_loc2_ || _loc3_)
               {
                  addr007f:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr0097);
            }
            addr0097:
            return _loc1_;
         }
         §§goto(addr0050);
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(!(_loc3_ && _loc3_))
            {
               addr0052:
               _loc1_.dynaBmpSourceName = "infrabar_yellow_left";
               if(!(_loc3_ && _loc3_))
               {
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
         §§goto(addr0052);
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(_loc3_)
            {
               §§goto(addr0041);
            }
            §§goto(addr0082);
         }
         addr0041:
         _loc1_.dynaBmpSourceName = "infrabar_yellow_middle";
         if(_loc3_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               §§goto(addr006c);
            }
            §§goto(addr0076);
         }
         addr006c:
         _loc1_.percentHeight = 100;
         if(!_loc2_)
         {
            addr0076:
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr0082:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib9_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "infrabar_yellow_right";
               if(!_loc3_)
               {
                  §§goto(addr0058);
               }
               §§goto(addr006c);
            }
         }
         addr0058:
         if(!_loc1_.document)
         {
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               addr006c:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_HGroup6_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.left = 20;
               if(!_loc3_)
               {
                  _loc1_.right = 30;
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.paddingLeft = 3;
                     if(_loc2_ || Boolean(this))
                     {
                        addr0066:
                        _loc1_.paddingRight = 3;
                        if(!(_loc3_ && _loc2_))
                        {
                           _loc1_.verticalCenter = 0;
                           if(_loc2_ || Boolean(this))
                           {
                              _loc1_.mxmlContent = [this._EmergencySuccessBarSkin_Group5_i()];
                              if(!_loc3_)
                              {
                                 addr00a7:
                                 if(!_loc1_.document)
                                 {
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       addr00bb:
                                       _loc1_.document = this;
                                    }
                                 }
                                 §§goto(addr00bf);
                              }
                              §§goto(addr00bb);
                           }
                           §§goto(addr00bf);
                        }
                        §§goto(addr00a7);
                     }
                     §§goto(addr00bf);
                  }
               }
               §§goto(addr0066);
            }
            addr00bf:
            return _loc1_;
         }
         §§goto(addr0066);
      }
      
      private function _EmergencySuccessBarSkin_Group5_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc3_)
            {
               _loc1_.verticalCenter = 0;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.mxmlContent = [this._EmergencySuccessBarSkin_HGroup7_c(),this._EmergencySuccessBarSkin_HGroup8_i()];
                  if(_loc2_)
                  {
                     _loc1_.id = "progressBar";
                     if(_loc2_)
                     {
                        addr0078:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              _loc1_.document = this;
                              if(_loc2_)
                              {
                                 §§goto(addr008d);
                              }
                              §§goto(addr0097);
                           }
                        }
                        addr008d:
                        this.progressBar = _loc1_;
                        if(_loc2_)
                        {
                           addr0097:
                           BindingManager.executeBindings(this,"progressBar",this.progressBar);
                        }
                        §§goto(addr00a4);
                     }
                     addr00a4:
                     return _loc1_;
                  }
               }
               §§goto(addr008d);
            }
            §§goto(addr0078);
         }
         §§goto(addr0097);
      }
      
      private function _EmergencySuccessBarSkin_HGroup7_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.gap = 0;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.verticalCenter = 0;
               if(!_loc3_)
               {
                  §§goto(addr004d);
               }
               §§goto(addr0091);
            }
            §§goto(addr00a5);
         }
         addr004d:
         _loc1_.percentWidth = 100;
         if(_loc2_ || _loc3_)
         {
            _loc1_.mxmlContent = [this._EmergencySuccessBarSkin_BriskImageDynaLib10_c(),this._EmergencySuccessBarSkin_BriskImageDynaLib11_c(),this._EmergencySuccessBarSkin_BriskImageDynaLib12_c()];
            if(_loc2_ || Boolean(this))
            {
               addr0091:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr00a5:
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib10_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.dynaBmpSourceName = "infrabar_green_left";
               if(_loc2_ || _loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib11_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "infrabar_green_middle";
               if(_loc3_ || _loc2_)
               {
                  _loc1_.percentWidth = 100;
                  addr0048:
                  if(!_loc2_)
                  {
                     _loc1_.percentHeight = 100;
                     if(!_loc2_)
                     {
                        addr006a:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && Boolean(this)))
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr0082);
                  }
                  §§goto(addr006a);
               }
               addr0082:
               return _loc1_;
            }
            §§goto(addr0048);
         }
         §§goto(addr006a);
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib12_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(!_loc2_)
            {
               addr004c:
               _loc1_.dynaBmpSourceName = "infrabar_green_right";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr004c);
      }
      
      private function _EmergencySuccessBarSkin_HGroup8_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.gap = 0;
            if(_loc3_ || _loc2_)
            {
               _loc1_.verticalCenter = 0;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.percentWidth = 100;
                  if(_loc3_)
                  {
                     _loc1_.mxmlContent = [this._EmergencySuccessBarSkin_BriskImageDynaLib13_c(),this._EmergencySuccessBarSkin_BriskImageDynaLib14_c(),this._EmergencySuccessBarSkin_BriskImageDynaLib15_c()];
                     if(_loc3_)
                     {
                        addr007e:
                        _loc1_.id = "blendBar";
                        if(!_loc2_)
                        {
                           §§goto(addr0089);
                        }
                        §§goto(addr00bd);
                     }
                     addr0089:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              §§goto(addr00ab);
                           }
                           §§goto(addr00bd);
                        }
                     }
                     addr00ab:
                     this.blendBar = _loc1_;
                     if(_loc3_ || Boolean(this))
                     {
                        addr00bd:
                        BindingManager.executeBindings(this,"blendBar",this.blendBar);
                     }
                     §§goto(addr00ca);
                  }
                  §§goto(addr007e);
               }
               addr00ca:
               return _loc1_;
            }
            §§goto(addr00bd);
         }
         §§goto(addr0089);
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib13_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "infrabar_green_left";
               if(_loc2_)
               {
                  addr0058:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        addr006c:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0070);
               }
               §§goto(addr006c);
            }
            addr0070:
            return _loc1_;
         }
         §§goto(addr0058);
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib14_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "infrabar_green_middle";
               if(!_loc3_)
               {
                  _loc1_.percentWidth = 100;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.percentHeight = 100;
                     if(!(_loc3_ && _loc3_))
                     {
                        §§goto(addr0077);
                     }
                     §§goto(addr0083);
                  }
               }
               §§goto(addr0077);
            }
            §§goto(addr0083);
         }
         addr0077:
         if(!_loc1_.document)
         {
            if(!_loc3_)
            {
               addr0083:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib15_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "infrabar_green_right";
               if(_loc2_ || _loc2_)
               {
                  §§goto(addr005d);
               }
            }
            §§goto(addr0071);
         }
         addr005d:
         if(!_loc1_.document)
         {
            if(!(_loc3_ && _loc2_))
            {
               addr0071:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib16_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.id = "icon";
            if(_loc2_ || Boolean(this))
            {
               addr0049:
               if(!_loc1_.document)
               {
                  if(_loc2_ || _loc3_)
                  {
                     §§goto(addr006a);
                  }
                  §§goto(addr0085);
               }
               §§goto(addr007b);
            }
            addr006a:
            _loc1_.document = this;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               addr007b:
               this.icon = _loc1_;
               if(!_loc3_)
               {
                  addr0085:
                  BindingManager.executeBindings(this,"icon",this.icon);
               }
            }
            return _loc1_;
         }
         §§goto(addr0049);
      }
      
      private function _EmergencySuccessBarSkin_HGroup9_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.left = 20;
               if(_loc3_)
               {
                  addr003b:
                  _loc1_.right = 26;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc3_ || Boolean(this))
                     {
                        §§goto(addr006b);
                     }
                     §§goto(addr007d);
                  }
                  addr006b:
                  _loc1_.gap = 70;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr007d:
                     _loc1_.verticalCenter = 0;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.mxmlContent = [this._EmergencySuccessBarSkin_BriskImageDynaLib17_c(),this._EmergencySuccessBarSkin_BriskImageDynaLib18_c(),this._EmergencySuccessBarSkin_BriskImageDynaLib19_c(),this._EmergencySuccessBarSkin_BriskImageDynaLib20_c(),this._EmergencySuccessBarSkin_BriskImageDynaLib21_c()];
                        §§goto(addr008f);
                     }
                     §§goto(addr00c9);
                  }
                  §§goto(addr008f);
               }
               addr008f:
               if(!(_loc2_ && _loc2_))
               {
                  addr00c9:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr007d);
         }
         §§goto(addr003b);
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib17_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "infrabar_divider";
               if(_loc2_)
               {
                  addr0056:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr006e);
            }
            §§goto(addr0056);
         }
         addr006e:
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib18_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(_loc3_)
            {
               addr004b:
               _loc1_.dynaBmpSourceName = "infrabar_divider";
               if(_loc3_ || Boolean(this))
               {
                  §§goto(addr005e);
               }
               §§goto(addr006a);
            }
            addr005e:
            if(!_loc1_.document)
            {
               if(!_loc2_)
               {
                  addr006a:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr004b);
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib19_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "infrabar_divider";
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        addr0054:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr0054);
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib20_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(!_loc2_)
            {
               §§goto(addr003e);
            }
            §§goto(addr0049);
         }
         addr003e:
         _loc1_.dynaBmpSourceName = "infrabar_divider";
         if(!_loc2_)
         {
            addr0049:
            if(!_loc1_.document)
            {
               if(!_loc2_)
               {
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib21_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(_loc3_ || Boolean(this))
            {
               addr0056:
               _loc1_.dynaBmpSourceName = "infrabar_divider";
               if(!_loc2_)
               {
                  §§goto(addr0061);
               }
               §§goto(addr0075);
            }
            addr0061:
            if(!_loc1_.document)
            {
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr0075:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0056);
      }
      
      private function _EmergencySuccessBarSkin_HGroup10_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.left = 20;
               if(!(_loc2_ && _loc3_))
               {
                  addr0044:
                  _loc1_.right = 30;
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.horizontalAlign = "right";
                     if(_loc3_)
                     {
                        §§goto(addr0070);
                     }
                     §§goto(addr0083);
                  }
                  §§goto(addr00ae);
               }
               §§goto(addr00d2);
            }
            addr0070:
            _loc1_.paddingLeft = 3;
            if(!(_loc2_ && _loc2_))
            {
               addr0083:
               _loc1_.paddingRight = 3;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.verticalCenter = 0;
                  if(!_loc2_)
                  {
                     addr00ae:
                     _loc1_.mxmlContent = [this._EmergencySuccessBarSkin_Group6_i()];
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr00d2:
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
                  §§goto(addr00d6);
               }
               §§goto(addr00ae);
            }
            addr00d6:
            return _loc1_;
         }
         §§goto(addr0044);
      }
      
      private function _EmergencySuccessBarSkin_Group6_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               §§goto(addr0029);
            }
            §§goto(addr007a);
         }
         addr0029:
         _loc1_.mxmlContent = [this._EmergencySuccessBarSkin_Group7_c()];
         if(_loc3_)
         {
            _loc1_.id = "capBar";
            if(!(_loc2_ && _loc2_))
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr0071);
                  }
                  §§goto(addr008c);
               }
               §§goto(addr007a);
            }
            addr0071:
            _loc1_.document = this;
            if(!_loc2_)
            {
               addr007a:
               this.capBar = _loc1_;
               if(_loc3_ || _loc2_)
               {
                  addr008c:
                  BindingManager.executeBindings(this,"capBar",this.capBar);
               }
            }
            §§goto(addr0099);
         }
         addr0099:
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_Group7_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.mxmlContent = [this._EmergencySuccessBarSkin_HGroup11_i(),this._EmergencySuccessBarSkin_BriskImageDynaLib24_c()];
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0086:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr008a);
                  }
                  §§goto(addr0086);
               }
               §§goto(addr008a);
            }
            §§goto(addr0086);
         }
         addr008a:
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_HGroup11_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.gap = 0;
            if(_loc2_)
            {
               _loc1_.paddingTop = 5;
               if(!_loc3_)
               {
                  _loc1_.percentWidth = 100;
                  if(_loc2_)
                  {
                     _loc1_.mxmlContent = [this._EmergencySuccessBarSkin_BriskImageDynaLib22_c(),this._EmergencySuccessBarSkin_BriskImageDynaLib23_c()];
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.id = "capBarMask";
                        if(!_loc3_)
                        {
                           addr0071:
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr0087:
                                 _loc1_.document = this;
                                 if(_loc2_)
                                 {
                                    addr0090:
                                    this.capBarMask = _loc1_;
                                    if(_loc2_ || Boolean(_loc1_))
                                    {
                                       addr00a2:
                                       BindingManager.executeBindings(this,"capBarMask",this.capBarMask);
                                    }
                                 }
                              }
                              return _loc1_;
                           }
                        }
                        §§goto(addr0090);
                     }
                     §§goto(addr0087);
                  }
               }
               §§goto(addr00a2);
            }
            §§goto(addr0071);
         }
         §§goto(addr00a2);
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib22_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "citysquare_bar_middle";
               if(_loc3_)
               {
                  addr004f:
                  _loc1_.percentWidth = 100;
                  if(_loc3_ || _loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr006d:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr0071);
               }
               §§goto(addr006d);
            }
            addr0071:
            return _loc1_;
         }
         §§goto(addr004f);
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib23_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "citysquare_bar_right";
               if(!(_loc3_ && _loc2_))
               {
                  addr0058:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        addr006c:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr006c);
         }
         §§goto(addr0058);
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib24_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.dynaBmpSourceName = "indicator";
            if(!(_loc3_ && Boolean(this)))
            {
               addr0056:
               _loc1_.dynaLibName = "gui_popups_emergencyBook";
               if(!_loc3_)
               {
                  _loc1_.left = -5;
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr0077:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr0077);
            }
            addr007b:
            return _loc1_;
         }
         §§goto(addr0056);
      }
      
      private function _EmergencySuccessBarSkin_Group8_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.right = 0;
            if(_loc2_)
            {
               _loc1_.mxmlContent = [this._EmergencySuccessBarSkin_Button1_i()];
               if(_loc2_)
               {
                  addr0058:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0058);
      }
      
      private function _EmergencySuccessBarSkin_Button1_i() : Button
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Button = new Button();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.focusEnabled = false;
            if(_loc2_ || Boolean(_loc1_))
            {
               §§goto(addr003a);
            }
            §§goto(addr00cc);
         }
         addr003a:
         _loc1_.setStyle("skinClass",EmergencySuccessBarButtonSkin);
         if(_loc2_ || Boolean(this))
         {
            _loc1_.addEventListener("click",this.__capBubble_click);
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.id = "capBubble";
               if(!(_loc3_ && _loc2_))
               {
                  addr0089:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc1_.document = this;
                        if(!(_loc3_ && _loc3_))
                        {
                           addr00ba:
                           this.capBubble = _loc1_;
                           if(_loc2_ || Boolean(this))
                           {
                              addr00cc:
                              BindingManager.executeBindings(this,"capBubble",this.capBubble);
                           }
                           §§goto(addr00d9);
                        }
                        §§goto(addr00cc);
                     }
                     §§goto(addr00d9);
                  }
               }
               §§goto(addr00ba);
            }
            §§goto(addr0089);
         }
         addr00d9:
         return _loc1_;
      }
      
      public function __capBubble_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this.handleBubbleClicked();
         }
      }
      
      private function _EmergencySuccessBarSkin_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.verticalAlign = "middle";
            if(_loc2_)
            {
               _loc1_.height = 45;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.width = 45;
                  if(!_loc3_)
                  {
                     _loc1_.right = 0;
                     if(_loc2_ || _loc3_)
                     {
                        §§goto(addr0064);
                     }
                     §§goto(addr006e);
                  }
                  addr0064:
                  _loc1_.mouseEnabled = false;
                  if(!_loc3_)
                  {
                     addr006e:
                     _loc1_.mouseChildren = false;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        §§goto(addr008d);
                     }
                     §§goto(addr00b1);
                  }
                  §§goto(addr008d);
               }
            }
            §§goto(addr009d);
         }
         addr008d:
         _loc1_.mxmlContent = [this._EmergencySuccessBarSkin_LocaLabel2_i()];
         if(!_loc3_)
         {
            addr009d:
            if(!_loc1_.document)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  addr00b1:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.styleName = "maxSuccessChance";
               if(!_loc2_)
               {
                  §§goto(addr004b);
               }
               §§goto(addr008a);
            }
            addr004b:
            _loc1_.id = "capBubbleLabel";
            if(_loc3_ || Boolean(this))
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     _loc1_.document = this;
                     if(!_loc2_)
                     {
                        §§goto(addr0080);
                     }
                  }
                  §§goto(addr008a);
               }
            }
            addr0080:
            this.capBubbleLabel = _loc1_;
            if(!_loc2_)
            {
               addr008a:
               BindingManager.executeBindings(this,"capBubbleLabel",this.capBubbleLabel);
            }
            return _loc1_;
         }
         §§goto(addr008a);
      }
      
      public function ___EmergencySuccessBarSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.handleCreationComplete();
         }
      }
      
      private function _EmergencySuccessBarSkin_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(!_loc2_)
         {
            §§pop().§§slot[1] = [];
            if(_loc3_)
            {
               §§push(§§newactivation());
               if(!(_loc2_ && Boolean(this)))
               {
                  §§push(§§pop().§§slot[1]);
                  if(_loc3_ || _loc2_)
                  {
                     §§push(0);
                     if(_loc3_ || _loc2_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():DisplayObject
                        {
                           return this.capBarMask;
                        },null,"stripeBar.mask");
                        if(!(_loc2_ && _loc1_))
                        {
                           §§push(§§newactivation());
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr0092:
                              §§push(§§pop().§§slot[1]);
                              if(!(_loc2_ && _loc3_))
                              {
                                 §§push(1);
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    §§pop()[§§pop()] = new Binding(this,function():String
                                    {
                                       var _loc1_:* = BlendMode.OVERLAY;
                                       return _loc1_ == undefined ? null : String(_loc1_);
                                    },null,"blendBar.blendMode");
                                    if(_loc3_ || _loc1_)
                                    {
                                       §§goto(addr00cf);
                                    }
                                    §§goto(addr0138);
                                 }
                                 §§goto(addr00ec);
                              }
                              §§goto(addr0125);
                           }
                           §§goto(addr013a);
                        }
                        addr00cf:
                        §§push(§§newactivation());
                        if(!_loc2_)
                        {
                           §§push(§§pop().§§slot[1]);
                           if(_loc3_ || _loc3_)
                           {
                              §§push(2);
                              if(!_loc2_)
                              {
                                 addr00ec:
                                 §§pop()[§§pop()] = new Binding(this,function():String
                                 {
                                    var _loc1_:* = this.hostComponent.getStyle("dynaLibName");
                                    return _loc1_ == undefined ? null : String(_loc1_);
                                 },null,"icon.dynaLibName");
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    §§push(§§newactivation());
                                    if(_loc3_)
                                    {
                                       §§goto(addr011e);
                                    }
                                    §§goto(addr013a);
                                 }
                                 §§goto(addr0138);
                              }
                              §§goto(addr0127);
                           }
                           §§goto(addr0125);
                        }
                        addr011e:
                        §§goto(addr013c);
                     }
                     §§goto(addr0127);
                  }
                  addr013c:
                  §§push(§§pop().§§slot[1]);
                  if(_loc3_)
                  {
                     addr0127:
                     §§pop()[3] = new Binding(this,function():String
                     {
                        var _loc1_:* = this.hostComponent.getStyle("icon");
                        return _loc1_ == undefined ? null : String(_loc1_);
                     },null,"icon.dynaBmpSourceName");
                     addr013a:
                     addr0138:
                     §§push(result);
                     addr0125:
                  }
                  return §§pop();
               }
               §§goto(addr0092);
            }
            §§goto(addr0138);
         }
         §§goto(addr013a);
      }
      
      [Bindable(event="propertyChange")]
      public function get advanceBar() : Group
      {
         return this._686650417advanceBar;
      }
      
      public function set advanceBar(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._686650417advanceBar;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._686650417advanceBar = param1;
                  if(!_loc4_)
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"advanceBar",_loc2_,param1));
                        }
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr006c);
               }
            }
            addr007b:
            return;
         }
         §§goto(addr005d);
      }
      
      [Bindable(event="propertyChange")]
      public function get blendBar() : HGroup
      {
         return this._940952062blendBar;
      }
      
      public function set blendBar(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._940952062blendBar;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._940952062blendBar = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr0055);
                  }
                  §§goto(addr006d);
               }
               addr0055:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || Boolean(param1))
                  {
                     addr006d:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"blendBar",_loc2_,param1));
                  }
               }
               §§goto(addr007c);
            }
            addr007c:
            return;
         }
         §§goto(addr006d);
      }
      
      [Bindable(event="propertyChange")]
      public function get capBar() : Group
      {
         return this._1367696671capBar;
      }
      
      public function set capBar(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1367696671capBar;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._1367696671capBar = param1;
                  if(_loc3_)
                  {
                     addr0054:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"capBar",_loc2_,param1));
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
         §§goto(addr0054);
      }
      
      [Bindable(event="propertyChange")]
      public function get capBarMask() : HGroup
      {
         return this._1747238253capBarMask;
      }
      
      public function set capBarMask(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1747238253capBarMask;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1747238253capBarMask = param1;
                  addr003f:
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"capBarMask",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr003f);
      }
      
      [Bindable(event="propertyChange")]
      public function get capBubble() : Button
      {
         return this._1321302782capBubble;
      }
      
      public function set capBubble(param1:Button) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1321302782capBubble;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1321302782capBubble = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"capBubble",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get capBubbleLabel() : LocaLabel
      {
         return this._1494859114capBubbleLabel;
      }
      
      public function set capBubbleLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1494859114capBubbleLabel;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._1494859114capBubbleLabel = param1;
                  if(_loc4_)
                  {
                     §§goto(addr0055);
                  }
                  §§goto(addr006c);
               }
               addr0055:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr006c:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"capBubbleLabel",_loc2_,param1));
                  }
               }
               §§goto(addr007b);
            }
            addr007b:
            return;
         }
         §§goto(addr0055);
      }
      
      [Bindable(event="propertyChange")]
      public function get icon() : BriskImageDynaLib
      {
         return this._3226745icon;
      }
      
      public function set icon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._3226745icon;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._3226745icon = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"icon",_loc2_,param1));
                        }
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr006e);
               }
            }
            addr007d:
            return;
         }
         §§goto(addr006e);
      }
      
      [Bindable(event="propertyChange")]
      public function get labelDisplay() : LocaLabel
      {
         return this._1184053038labelDisplay;
      }
      
      public function set labelDisplay(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1184053038labelDisplay;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._1184053038labelDisplay = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelDisplay",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr0075);
            }
            addr0084:
            return;
         }
         §§goto(addr0075);
      }
      
      [Bindable(event="propertyChange")]
      public function get progressBar() : Group
      {
         return this._1131509414progressBar;
      }
      
      public function set progressBar(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1131509414progressBar;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  addr004f:
                  this._1131509414progressBar = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr0059);
                  }
                  §§goto(addr0068);
               }
               addr0059:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr0068:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressBar",_loc2_,param1));
                  }
               }
               §§goto(addr0077);
            }
            addr0077:
            return;
         }
         §§goto(addr004f);
      }
      
      [Bindable(event="propertyChange")]
      public function get stripeBar() : HGroup
      {
         return this._187521914stripeBar;
      }
      
      public function set stripeBar(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._187521914stripeBar;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._187521914stripeBar = param1;
                  if(_loc4_)
                  {
                     addr0051:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stripeBar",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0051);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : EmergencySuccessBarComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:EmergencySuccessBarComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._213507019hostComponent;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._213507019hostComponent = param1;
                  if(_loc4_)
                  {
                     addr0043:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0043);
      }
   }
}

