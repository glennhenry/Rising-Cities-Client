package net.bigpoint.cityrama.view.citysquare.ui.components.skins
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
   import mx.core.IStateClient2;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.CustomHScrollBar;
   import net.bigpoint.cityrama.view.miniLayer.components.skins.ItemviewHbarSkin;
   import spark.components.DataGroup;
   import spark.components.List;
   import spark.layouts.HorizontalLayout;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class ChallengeListSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _385593099dataGroup:DataGroup;
      
      private var _1684366319hscrollerBar:CustomHScrollBar;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:List;
      
      public function ChallengeListSkin()
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
            if(_loc4_ || _loc3_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!_loc3_)
               {
                  §§push(§§newactivation());
                  if(!_loc3_)
                  {
                     §§push(null);
                     if(_loc4_)
                     {
                        §§pop().§§slot[3] = §§pop();
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(§§newactivation());
                           if(!_loc3_)
                           {
                              addr0067:
                              §§pop().§§slot[5] = null;
                              if(_loc4_ || _loc2_)
                              {
                                 this.mx_internal::_bindings = [];
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr008c:
                                    this.mx_internal::_watchers = [];
                                    if(!(_loc3_ && _loc1_))
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(_loc4_ || _loc2_)
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(_loc4_)
                                          {
                                             super();
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                mx_internal::_document = this;
                                                if(_loc4_)
                                                {
                                                   addr00e2:
                                                   §§push(§§newactivation());
                                                   if(!(_loc3_ && Boolean(this)))
                                                   {
                                                      addr00f1:
                                                      §§pop().§§slot[1] = this._ChallengeListSkin_bindingsSetup();
                                                      if(_loc4_)
                                                      {
                                                         addr0101:
                                                         §§push(§§newactivation());
                                                         if(!_loc3_)
                                                         {
                                                            addr0108:
                                                            §§pop().§§slot[2] = [];
                                                            if(_loc4_ || Boolean(this))
                                                            {
                                                               addr011c:
                                                               §§push(§§newactivation());
                                                               if(_loc4_)
                                                               {
                                                                  §§pop().§§slot[3] = this;
                                                                  if(_loc4_)
                                                                  {
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(_loc4_)
                                                                           {
                                                                              addr0144:
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_citysquare_ui_components_skins_ChallengeListSkinWatcherSetupUtil");
                                                                              if(_loc4_ || Boolean(this))
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    addr0174:
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(_loc4_ || Boolean(this))
                                                                                    {
                                                                                       addr0193:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return ChallengeListSkin[param1];
                                                                                       },bindings,watchers);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          addr01b0:
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             §§goto(addr01d6);
                                                                                          }
                                                                                          §§goto(addr0204);
                                                                                       }
                                                                                       §§goto(addr0222);
                                                                                    }
                                                                                    §§goto(addr0290);
                                                                                 }
                                                                                 §§goto(addr0292);
                                                                              }
                                                                              addr01d6:
                                                                              mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                              if(!(_loc3_ && Boolean(this)))
                                                                              {
                                                                                 addr0204:
                                                                                 this.percentHeight = 100;
                                                                                 if(_loc4_ || _loc1_)
                                                                                 {
                                                                                    addr0217:
                                                                                    this.percentWidth = 100;
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       addr0222:
                                                                                       this.blendMode = "normal";
                                                                                       if(_loc4_ || Boolean(this))
                                                                                       {
                                                                                          addr0237:
                                                                                          this.mxmlContent = [this._ChallengeListSkin_DataGroup1_i(),this._ChallengeListSkin_CustomHScrollBar1_i()];
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             addr024e:
                                                                                             this.currentState = "normal";
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                §§goto(addr025b);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr0290);
                                                                                       }
                                                                                       §§goto(addr025b);
                                                                                    }
                                                                                    §§goto(addr024e);
                                                                                 }
                                                                              }
                                                                              §§goto(addr025b);
                                                                           }
                                                                           §§goto(addr0174);
                                                                        }
                                                                        §§goto(addr0222);
                                                                     }
                                                                     §§goto(addr0193);
                                                                  }
                                                                  §§goto(addr01b0);
                                                               }
                                                               §§goto(addr0292);
                                                            }
                                                            §§goto(addr0290);
                                                         }
                                                         §§goto(addr0292);
                                                      }
                                                      §§goto(addr024e);
                                                   }
                                                   §§goto(addr0292);
                                                }
                                                §§goto(addr0101);
                                             }
                                             §§goto(addr0217);
                                          }
                                          §§goto(addr024e);
                                       }
                                       addr025b:
                                       states = [new State({
                                          "name":"normal",
                                          "overrides":[]
                                       }),new State({
                                          "name":"disabled",
                                          "overrides":[]
                                       })];
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          addr0292:
                                          i = 0;
                                          addr0290:
                                       }
                                       var _temp_19:*;
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
                                                   if(!_loc4_)
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
                                                         if(!_loc3_)
                                                         {
                                                            §§push(§§newactivation());
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            continue;
                                                         }
                                                      }
                                                      continue loop2;
                                                   }
                                                   continue loop1;
                                                }
                                                break;
                                             }
                                             break;
                                          }
                                          break;
                                       }
                                       while(var _temp_19:* = §§pop(), §§pop().§§slot[4] = _temp_19, _loc4_ || _loc2_);
                                       
                                       return;
                                    }
                                    §§goto(addr011c);
                                 }
                                 §§goto(addr00e2);
                              }
                              §§goto(addr008c);
                           }
                           §§goto(addr0108);
                        }
                        §§goto(addr0237);
                     }
                     §§goto(addr0067);
                  }
                  §§goto(addr0144);
               }
               §§goto(addr01d6);
            }
            §§goto(addr0067);
         }
         §§goto(addr00f1);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            ChallengeListSkin._watcherSetupUtil = param1;
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
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || Boolean(param1))
                  {
                     §§goto(addr0042);
                  }
               }
               §§goto(addr0048);
            }
            addr0042:
            return;
         }
         addr0048:
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super.initialize();
         }
      }
      
      private function handleUpdateComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.hscrollerBar.scrollpositionChanged();
         }
      }
      
      private function _ChallengeListSkin_DataGroup1_i() : DataGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DataGroup = new DataGroup();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.left = 41;
            if(!(_loc3_ && _loc2_))
            {
               addr003c:
               _loc1_.right = 41;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.percentHeight = 100;
                  if(!_loc3_)
                  {
                     _loc1_.focusEnabled = false;
                     if(!_loc3_)
                     {
                        _loc1_.layout = this._ChallengeListSkin_HorizontalLayout1_c();
                        if(_loc2_)
                        {
                           addr007b:
                           _loc1_.addEventListener("updateComplete",this.__dataGroup_updateComplete);
                           if(!(_loc3_ && _loc2_))
                           {
                              _loc1_.id = "dataGroup";
                              if(_loc2_)
                              {
                                 addr009e:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc2_ || _loc2_)
                                    {
                                       §§goto(addr00bd);
                                    }
                                    §§goto(addr00d8);
                                 }
                                 §§goto(addr00c6);
                              }
                              §§goto(addr00d8);
                           }
                        }
                        §§goto(addr00c6);
                     }
                     addr00bd:
                     _loc1_.document = this;
                     if(!_loc3_)
                     {
                        addr00c6:
                        this.dataGroup = _loc1_;
                        if(_loc2_ || Boolean(this))
                        {
                           addr00d8:
                           BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr009e);
               }
            }
            §§goto(addr007b);
         }
         §§goto(addr003c);
      }
      
      private function _ChallengeListSkin_HorizontalLayout1_c() : HorizontalLayout
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         if(_loc3_)
         {
            _loc1_.requestedColumnCount = 1;
            if(_loc3_)
            {
               _loc1_.gap = 0;
               if(_loc3_ || Boolean(this))
               {
                  addr004f:
                  _loc1_.clipAndEnableScrolling = false;
               }
               return _loc1_;
            }
         }
         §§goto(addr004f);
      }
      
      public function __dataGroup_updateComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.handleUpdateComplete(param1);
         }
      }
      
      private function _ChallengeListSkin_CustomHScrollBar1_i() : CustomHScrollBar
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:CustomHScrollBar = new CustomHScrollBar();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.top = -15;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.percentWidth = 100;
               if(_loc3_)
               {
                  _loc1_.percentHeight = 100;
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.setStyle("skinClass",ItemviewHbarSkin);
                     if(!_loc2_)
                     {
                        _loc1_.addEventListener("changeEnd",this.__hscrollerBar_changeEnd);
                        if(_loc3_ || _loc2_)
                        {
                           _loc1_.id = "hscrollerBar";
                           if(_loc3_)
                           {
                              addr0098:
                              if(!_loc1_.document)
                              {
                                 if(_loc3_)
                                 {
                                    _loc1_.document = this;
                                    if(!(_loc2_ && Boolean(_loc1_)))
                                    {
                                       addr00c1:
                                       this.hscrollerBar = _loc1_;
                                       if(!_loc2_)
                                       {
                                          addr00cb:
                                          BindingManager.executeBindings(this,"hscrollerBar",this.hscrollerBar);
                                       }
                                    }
                                 }
                                 §§goto(addr00d8);
                              }
                              §§goto(addr00c1);
                           }
                           §§goto(addr00cb);
                        }
                        addr00d8:
                        return _loc1_;
                     }
                     §§goto(addr00cb);
                  }
                  §§goto(addr00c1);
               }
               §§goto(addr0098);
            }
            §§goto(addr00cb);
         }
         §§goto(addr00c1);
      }
      
      public function __hscrollerBar_changeEnd(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.dataGroup.invalidateProperties();
         }
      }
      
      private function _ChallengeListSkin_bindingsSetup() : Array
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Array = [];
         if(_loc3_)
         {
            _loc1_[0] = new Binding(this,null,null,"hscrollerBar.viewport","dataGroup");
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get dataGroup() : DataGroup
      {
         return this._385593099dataGroup;
      }
      
      public function set dataGroup(param1:DataGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._385593099dataGroup;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._385593099dataGroup = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0083);
                  }
               }
               §§goto(addr0074);
            }
            addr0083:
            return;
         }
         §§goto(addr005d);
      }
      
      [Bindable(event="propertyChange")]
      public function get hscrollerBar() : CustomHScrollBar
      {
         return this._1684366319hscrollerBar;
      }
      
      public function set hscrollerBar(param1:CustomHScrollBar) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1684366319hscrollerBar;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1684366319hscrollerBar = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0051:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hscrollerBar",_loc2_,param1));
                        }
                     }
                     §§goto(addr0060);
                  }
               }
               §§goto(addr0051);
            }
         }
         addr0060:
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : List
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:List) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._213507019hostComponent = param1;
                  if(!_loc4_)
                  {
                     addr005a:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0080);
               }
               §§goto(addr005a);
            }
            addr0080:
            return;
         }
         §§goto(addr005a);
      }
   }
}

