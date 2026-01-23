package net.bigpoint.cityrama.view.mainMenu.ui.components
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
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.resources.ResourceManager;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import spark.components.Group;
   import spark.components.RadioButton;
   import spark.components.RadioButtonGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class ViewmodeGroupComponent extends VGroup implements IBindingClient
   {
      
      public static const EVENT_POLICE_SELECTED:String = "EVENT_POLICE_SELECTED";
      
      public static const EVENT_FIRE_SELECTED:String = "EVENT_FIRE_SELECTED";
      
      public static const EVENT_HOSPITAL_SELECTED:String = "EVENT_HOSPITAL_SELECTED";
      
      public static const EVENT_NONE_SELECTED:String = "EVENT_NONE_SELECTED";
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         EVENT_POLICE_SELECTED = "EVENT_POLICE_SELECTED";
         if(_loc2_ || _loc2_)
         {
            EVENT_FIRE_SELECTED = "EVENT_FIRE_SELECTED";
            if(!_loc1_)
            {
               EVENT_HOSPITAL_SELECTED = "EVENT_HOSPITAL_SELECTED";
               if(_loc2_ || _loc2_)
               {
                  addr005a:
                  EVENT_NONE_SELECTED = "EVENT_NONE_SELECTED";
               }
               §§goto(addr0063);
            }
         }
         §§goto(addr005a);
      }
      addr0063:
      
      private var _1258932387emergencyViews:RadioButtonGroup;
      
      private var _397212403fireViewButton:RadioButton;
      
      private var _697116655hospitalViewButton:RadioButton;
      
      private var _1712402933policeViewButton:RadioButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ViewmodeGroupComponent()
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
            if(!_loc3_)
            {
               §§pop().§§slot[3] = §§pop();
               if(_loc4_)
               {
                  §§push(§§newactivation());
                  if(!(_loc3_ && _loc1_))
                  {
                     addr003e:
                     §§pop().§§slot[5] = null;
                     addr003d:
                     if(!(_loc3_ && Boolean(this)))
                     {
                        this.mx_internal::_bindings = [];
                        if(_loc4_)
                        {
                           this.mx_internal::_watchers = [];
                           if(_loc4_ || _loc2_)
                           {
                              addr006f:
                              this.mx_internal::_bindingsByDestination = {};
                              if(_loc4_ || _loc3_)
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr0096:
                                    super();
                                    if(!_loc3_)
                                    {
                                       mx_internal::_document = this;
                                       if(!_loc3_)
                                       {
                                          §§push(§§newactivation());
                                          if(_loc4_)
                                          {
                                             §§pop().§§slot[1] = this._ViewmodeGroupComponent_bindingsSetup();
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                addr00cf:
                                                §§push(§§newactivation());
                                                if(_loc4_ || _loc2_)
                                                {
                                                   addr00df:
                                                   §§pop().§§slot[2] = [];
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      addr00f2:
                                                      §§push(§§newactivation());
                                                      if(!_loc3_)
                                                      {
                                                         §§pop().§§slot[3] = this;
                                                         if(_loc4_)
                                                         {
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  addr0126:
                                                                  §§push(§§newactivation());
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_mainMenu_ui_components_ViewmodeGroupComponentWatcherSetupUtil");
                                                                     if(!_loc3_)
                                                                     {
                                                                        addr0149:
                                                                        §§push(§§newactivation());
                                                                        if(_loc4_)
                                                                        {
                                                                           addr0151:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(!_loc3_)
                                                                           {
                                                                              addr0167:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return ViewmodeGroupComponent[param1];
                                                                              },bindings,watchers);
                                                                              if(!(_loc3_ && _loc1_))
                                                                              {
                                                                                 addr018a:
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(_loc4_ || _loc3_)
                                                                                 {
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       this.mxmlContent = [this._ViewmodeGroupComponent_BriskImageDynaLib1_c(),this._ViewmodeGroupComponent_Group1_c(),this._ViewmodeGroupComponent_BriskImageDynaLib3_c()];
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          addr01fc:
                                                                                          this._ViewmodeGroupComponent_RadioButtonGroup1_i();
                                                                                          if(_loc4_ || _loc2_)
                                                                                          {
                                                                                             addr0212:
                                                                                             i = 0;
                                                                                             addr0210:
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
                                                                                                         break loop1;
                                                                                                      }
                                                                                                      Binding(bindings[i]).execute();
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         break loop2;
                                                                                                      }
                                                                                                      §§push(§§newactivation());
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         §§push(§§pop().§§slot[4]);
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(uint(§§pop() + 1));
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(§§newactivation());
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            var _temp_17:* = §§pop();
                                                                                                            §§pop().§§slot[4] = _temp_17;
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               break loop2;
                                                                                                            }
                                                                                                            break loop1;
                                                                                                         }
                                                                                                         continue;
                                                                                                      }
                                                                                                      continue loop1;
                                                                                                   }
                                                                                                }
                                                                                                continue loop0;
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          return;
                                                                                          addr0267:
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr0210);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr01fc);
                                                                        }
                                                                        §§goto(addr0212);
                                                                     }
                                                                     §§goto(addr0210);
                                                                  }
                                                                  §§goto(addr0212);
                                                               }
                                                            }
                                                            §§goto(addr0167);
                                                         }
                                                         §§goto(addr018a);
                                                      }
                                                      §§goto(addr0212);
                                                   }
                                                   §§goto(addr0267);
                                                }
                                                §§goto(addr0151);
                                             }
                                             §§goto(addr00f2);
                                          }
                                          §§goto(addr00df);
                                       }
                                       §§goto(addr00f2);
                                    }
                                    §§goto(addr0149);
                                 }
                                 §§goto(addr00cf);
                              }
                              §§goto(addr0096);
                           }
                           §§goto(addr0167);
                        }
                        §§goto(addr006f);
                     }
                     §§goto(addr0167);
                  }
                  §§goto(addr0151);
               }
               §§goto(addr0126);
            }
            §§goto(addr003e);
         }
         §§goto(addr003d);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            ViewmodeGroupComponent._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     return;
                  }
               }
               else
               {
                  addr0050:
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         §§goto(addr0050);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super.initialize();
         }
      }
      
      private function handleToolChange(param1:Event) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc5_)
            {
               break;
            }
            if(§§pop() >= (param1.currentTarget as RadioButtonGroup).numRadioButtons)
            {
               if(_loc4_)
               {
                  var _loc3_:* = (param1.currentTarget as RadioButtonGroup).selection;
                  if(!_loc5_)
                  {
                     switch(_loc3_)
                     {
                        case this.hospitalViewButton:
                           if(_loc4_)
                           {
                              §§push(0);
                              if(_loc5_ && Boolean(this))
                              {
                              }
                           }
                           break;
                        case this.policeViewButton:
                           if(_loc5_)
                           {
                           }
                        case this.fireViewButton:
                           §§push(2);
                           if(_loc5_)
                           {
                           }
                           break;
                        default:
                           §§push(3);
                     }
                     break;
                  }
                  §§push(1);
                  if(_loc4_)
                  {
                  }
                  §§goto(addr0172);
               }
               addr0193:
               TweenMax.delayedCall(0.1,this.delayedEventAdd,[(param1.currentTarget as RadioButtonGroup).selection]);
            }
            else
            {
               if((param1.currentTarget as RadioButtonGroup).getRadioButtonAt(_loc2_).hasEventListener(MouseEvent.CLICK))
               {
                  if(!(_loc5_ && Boolean(this)))
                  {
                     (param1.currentTarget as RadioButtonGroup).getRadioButtonAt(_loc2_).removeEventListener(MouseEvent.CLICK,this.deselectHandler);
                     if(!(_loc5_ && Boolean(_loc2_)))
                     {
                        addr006b:
                        _loc2_++;
                        if(_loc4_)
                        {
                           continue;
                        }
                     }
                  }
                  else
                  {
                     §§goto(addr0193);
                  }
                  §§goto(addr01ae);
               }
               §§goto(addr006b);
            }
            §§goto(addr01ae);
         }
         switch(§§pop())
         {
            case 0:
               dispatchEvent(new Event(EVENT_HOSPITAL_SELECTED));
               if(_loc5_ && Boolean(param1))
               {
                  break;
               }
               §§goto(addr0193);
               break;
            case 1:
               dispatchEvent(new Event(EVENT_POLICE_SELECTED));
               if(_loc5_)
               {
               }
               §§goto(addr0193);
            case 2:
               dispatchEvent(new Event(EVENT_FIRE_SELECTED));
               if(_loc5_)
               {
               }
               §§goto(addr0193);
            default:
               §§goto(addr0193);
         }
         addr01ae:
      }
      
      private function delayedEventAdd(param1:RadioButton) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            param1.addEventListener(MouseEvent.CLICK,this.deselectHandler);
         }
      }
      
      private function deselectHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            (param1.currentTarget as RadioButton).selected = false;
            if(_loc3_ || _loc2_)
            {
               addr004f:
               (param1.currentTarget as RadioButton).removeEventListener(MouseEvent.CLICK,this.deselectHandler);
               if(!(_loc2_ && Boolean(param1)))
               {
                  dispatchEvent(new Event(EVENT_NONE_SELECTED));
               }
            }
            return;
         }
         §§goto(addr004f);
      }
      
      private function _ViewmodeGroupComponent_RadioButtonGroup1_i() : RadioButtonGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:RadioButtonGroup = new RadioButtonGroup();
         if(!_loc2_)
         {
            _loc1_.addEventListener("change",this.__emergencyViews_change);
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.initialized(this,"emergencyViews");
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr006a);
               }
               §§goto(addr0074);
            }
            addr006a:
            this.emergencyViews = _loc1_;
            if(_loc3_)
            {
               addr0074:
               BindingManager.executeBindings(this,"emergencyViews",this.emergencyViews);
            }
            §§goto(addr0081);
         }
         addr0081:
         return _loc1_;
      }
      
      public function __emergencyViews_change(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.handleToolChange(param1);
         }
      }
      
      private function _ViewmodeGroupComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
            if(_loc2_ || _loc3_)
            {
               _loc1_.dynaBmpSourceName = "ui_main_subkategorie_top";
               if(!_loc3_)
               {
                  addr004a:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr0056:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr004a);
         }
         §§goto(addr0056);
      }
      
      private function _ViewmodeGroupComponent_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.mxmlContent = [this._ViewmodeGroupComponent_BriskImageDynaLib2_c(),this._ViewmodeGroupComponent_VGroup2_c()];
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               §§goto(addr0055);
            }
            §§goto(addr0069);
         }
         addr0055:
         if(!_loc1_.document)
         {
            if(!(_loc3_ && Boolean(this)))
            {
               addr0069:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _ViewmodeGroupComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "ui_main_subkategorie_middle";
               if(_loc3_ || _loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc2_)
                  {
                     addr006c:
                     _loc1_.percentHeight = 100;
                     if(!(_loc2_ && _loc3_))
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr008a:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr008e);
                     }
                  }
                  §§goto(addr008a);
               }
               addr008e:
               return _loc1_;
            }
            §§goto(addr008a);
         }
         §§goto(addr006c);
      }
      
      private function _ViewmodeGroupComponent_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.horizontalCenter = 0;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.percentHeight = 100;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.gap = 2;
                  if(_loc3_)
                  {
                     _loc1_.mxmlContent = [this._ViewmodeGroupComponent_RadioButton1_i(),this._ViewmodeGroupComponent_RadioButton2_i(),this._ViewmodeGroupComponent_RadioButton3_i()];
                     if(!(_loc2_ && Boolean(this)))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr009a:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr009e);
                  }
               }
            }
            §§goto(addr009a);
         }
         addr009e:
         return _loc1_;
      }
      
      private function _ViewmodeGroupComponent_RadioButton1_i() : RadioButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:RadioButton = new RadioButton();
         if(!_loc3_)
         {
            _loc1_.groupName = "emergencyViews";
            if(_loc2_)
            {
               _loc1_.styleName = "subMenueHospitalView";
               if(_loc2_ || _loc3_)
               {
                  _loc1_.id = "hospitalViewButton";
                  addr0043:
                  if(_loc2_ || _loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr008a:
                              this.hospitalViewButton = _loc1_;
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 addr009c:
                                 BindingManager.executeBindings(this,"hospitalViewButton",this.hospitalViewButton);
                              }
                           }
                           §§goto(addr00a9);
                        }
                        §§goto(addr009c);
                     }
                     §§goto(addr008a);
                  }
               }
            }
            addr00a9:
            return _loc1_;
         }
         §§goto(addr0043);
      }
      
      private function _ViewmodeGroupComponent_RadioButton2_i() : RadioButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:RadioButton = new RadioButton();
         if(_loc3_ || _loc3_)
         {
            _loc1_.groupName = "emergencyViews";
            if(_loc3_)
            {
               addr0036:
               _loc1_.styleName = "subMenuePoliceView";
               if(!_loc2_)
               {
                  _loc1_.id = "policeViewButton";
                  if(_loc3_ || _loc3_)
                  {
                     addr0060:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           addr007f:
                           _loc1_.document = this;
                           if(!(_loc2_ && _loc2_))
                           {
                              addr0090:
                              this.policeViewButton = _loc1_;
                              if(_loc3_)
                              {
                                 addr009a:
                                 BindingManager.executeBindings(this,"policeViewButton",this.policeViewButton);
                              }
                              §§goto(addr00a7);
                           }
                           §§goto(addr009a);
                        }
                        §§goto(addr00a7);
                     }
                     §§goto(addr0090);
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0060);
            }
            addr00a7:
            return _loc1_;
         }
         §§goto(addr0036);
      }
      
      private function _ViewmodeGroupComponent_RadioButton3_i() : RadioButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:RadioButton = new RadioButton();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.groupName = "emergencyViews";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.styleName = "subMenueFireView";
               if(!_loc2_)
               {
                  _loc1_.id = "fireViewButton";
                  if(!(_loc2_ && _loc2_))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(this)))
                        {
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              §§goto(addr0096);
                           }
                        }
                        §§goto(addr00a0);
                     }
                  }
                  §§goto(addr0096);
               }
               §§goto(addr00a0);
            }
            addr0096:
            this.fireViewButton = _loc1_;
            if(!_loc2_)
            {
               addr00a0:
               BindingManager.executeBindings(this,"fireViewButton",this.fireViewButton);
            }
            §§goto(addr00ad);
         }
         addr00ad:
         return _loc1_;
      }
      
      private function _ViewmodeGroupComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "ui_main_subkategorie_bottom";
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr005b:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr005b);
      }
      
      private function _ViewmodeGroupComponent_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(_loc3_)
         {
            §§pop().§§slot[1] = [];
            if(_loc3_)
            {
               §§push(§§newactivation());
               if(!(_loc2_ && _loc2_))
               {
                  addr0038:
                  §§push(§§pop().§§slot[1]);
                  if(!_loc2_)
                  {
                     §§push(0);
                     if(_loc3_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():String
                        {
                           var _loc1_:* = ResourceManager.getInstance().getString(String("rcl.tooltips.menubar"),String("rcl.tooltips.menubar.viewmodes.hospitalView"));
                           return _loc1_ == undefined ? null : String(_loc1_);
                        },null,"hospitalViewButton.toolTip");
                        if(_loc3_)
                        {
                           §§push(§§newactivation());
                           if(_loc3_ || _loc1_)
                           {
                              §§push(§§pop().§§slot[1]);
                              if(_loc3_ || _loc1_)
                              {
                                 §§push(1);
                                 if(!_loc2_)
                                 {
                                    addr008c:
                                    §§pop()[§§pop()] = new Binding(this,function():String
                                    {
                                       var _loc1_:* = ResourceManager.getInstance().getString(String("rcl.tooltips.menubar"),String("rcl.tooltips.menubar.viewmodes.policeView"));
                                       return _loc1_ == undefined ? null : String(_loc1_);
                                    },null,"policeViewButton.toolTip");
                                    if(_loc3_ || _loc1_)
                                    {
                                       §§push(§§newactivation());
                                       if(_loc3_ || _loc2_)
                                       {
                                          §§goto(addr00ea);
                                       }
                                       §§goto(addr00e8);
                                    }
                                    §§goto(addr00e6);
                                 }
                                 §§goto(addr00d5);
                              }
                              addr00ea:
                              §§push(§§pop().§§slot[1]);
                              if(!(_loc2_ && _loc1_))
                              {
                                 addr00d5:
                                 §§pop()[2] = new Binding(this,function():String
                                 {
                                    var _loc1_:* = ResourceManager.getInstance().getString(String("rcl.tooltips.menubar"),String("rcl.tooltips.menubar.viewmodes.fireView"));
                                    return _loc1_ == undefined ? null : String(_loc1_);
                                 },null,"fireViewButton.toolTip");
                                 addr00e8:
                                 addr00e6:
                                 §§push(result);
                                 addr00d3:
                              }
                              return §§pop();
                           }
                           §§goto(addr00e8);
                        }
                        §§goto(addr00e6);
                     }
                     §§goto(addr008c);
                  }
                  §§goto(addr00d3);
               }
               §§goto(addr00e8);
            }
            §§goto(addr00e6);
         }
         §§goto(addr0038);
      }
      
      [Bindable(event="propertyChange")]
      public function get emergencyViews() : RadioButtonGroup
      {
         return this._1258932387emergencyViews;
      }
      
      public function set emergencyViews(param1:RadioButtonGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1258932387emergencyViews;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._1258932387emergencyViews = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"emergencyViews",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr006e);
            }
         }
         addr007d:
      }
      
      [Bindable(event="propertyChange")]
      public function get fireViewButton() : RadioButton
      {
         return this._397212403fireViewButton;
      }
      
      public function set fireViewButton(param1:RadioButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._397212403fireViewButton;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._397212403fireViewButton = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr007a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fireViewButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0089);
               }
               §§goto(addr007a);
            }
         }
         addr0089:
      }
      
      [Bindable(event="propertyChange")]
      public function get hospitalViewButton() : RadioButton
      {
         return this._697116655hospitalViewButton;
      }
      
      public function set hospitalViewButton(param1:RadioButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._697116655hospitalViewButton;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._697116655hospitalViewButton = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0068:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hospitalViewButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0077);
                  }
                  §§goto(addr0068);
               }
            }
         }
         addr0077:
      }
      
      [Bindable(event="propertyChange")]
      public function get policeViewButton() : RadioButton
      {
         return this._1712402933policeViewButton;
      }
      
      public function set policeViewButton(param1:RadioButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1712402933policeViewButton;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._1712402933policeViewButton = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"policeViewButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr0078);
               }
            }
         }
         addr0087:
      }
   }
}

