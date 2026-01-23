package net.bigpoint.cityrama.view.quest.ui.skin
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
   import net.bigpoint.cityrama.view.common.components.NonScrollingDataGroup;
   import net.bigpoint.cityrama.view.miniLayer.components.skins.ItemviewHbarSkin;
   import spark.components.List;
   import spark.layouts.HorizontalLayout;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class RewardSlideListSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _385593099dataGroup:NonScrollingDataGroup;
      
      private var _1684366319hscrollerBar:CustomHScrollBar;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:List;
      
      public function RewardSlideListSkin()
      {
         var bindings:Array;
         var watchers:Array;
         var target:Object;
         var i:uint;
         var watcherSetupUtilClass:Object;
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §§push(§§newactivation());
         if(!(_loc4_ && Boolean(this)))
         {
            §§push(null);
            if(!_loc4_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!(_loc4_ && _loc3_))
               {
                  §§push(§§newactivation());
                  if(_loc3_)
                  {
                     §§push(null);
                     if(!(_loc4_ && _loc1_))
                     {
                        addr0056:
                        §§pop().§§slot[3] = §§pop();
                        if(_loc3_)
                        {
                           §§push(§§newactivation());
                           if(!_loc4_)
                           {
                              addr0068:
                              §§pop().§§slot[5] = null;
                              if(_loc3_ || Boolean(this))
                              {
                                 this.mx_internal::_bindings = [];
                                 if(!(_loc4_ && _loc1_))
                                 {
                                    this.mx_internal::_watchers = [];
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(_loc3_ || Boolean(this))
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(_loc3_)
                                          {
                                             addr00bf:
                                             super();
                                             if(!(_loc4_ && _loc1_))
                                             {
                                                addr00d0:
                                                mx_internal::_document = this;
                                                if(_loc3_ || Boolean(this))
                                                {
                                                   §§push(§§newactivation());
                                                   if(_loc3_ || Boolean(this))
                                                   {
                                                      addr00f9:
                                                      §§pop().§§slot[1] = this._RewardSlideListSkin_bindingsSetup();
                                                      if(_loc3_ || Boolean(this))
                                                      {
                                                         addr0110:
                                                         §§push(§§newactivation());
                                                         if(!(_loc4_ && _loc2_))
                                                         {
                                                            addr0120:
                                                            §§pop().§§slot[2] = [];
                                                            if(!_loc4_)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(_loc3_)
                                                               {
                                                                  §§pop().§§slot[3] = this;
                                                                  if(_loc3_)
                                                                  {
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(_loc3_ || _loc2_)
                                                                           {
                                                                              addr0167:
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_quest_ui_skin_RewardSlideListSkinWatcherSetupUtil");
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       addr0198:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return RewardSlideListSkin[param1];
                                                                                       },bindings,watchers);
                                                                                       if(!(_loc4_ && _loc3_))
                                                                                       {
                                                                                          addr01be:
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(_loc3_ || _loc3_)
                                                                                          {
                                                                                             addr01ec:
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                addr0212:
                                                                                                this.mxmlContent = [this._RewardSlideListSkin_NonScrollingDataGroup1_i(),this._RewardSlideListSkin_CustomHScrollBar1_i()];
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   addr0229:
                                                                                                   this.currentState = "normal";
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      addr0236:
                                                                                                      states = [new State({
                                                                                                         "name":"normal",
                                                                                                         "overrides":[]
                                                                                                      }),new State({
                                                                                                         "name":"disabled",
                                                                                                         "overrides":[]
                                                                                                      })];
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         addr0266:
                                                                                                         i = 0;
                                                                                                         addr0264:
                                                                                                      }
                                                                                                      var _temp_17:*;
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
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(_loc3_ || Boolean(this))
                                                                                                                  {
                                                                                                                     §§push(§§pop().§§slot[4]);
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        §§push(uint(§§pop() + 1));
                                                                                                                        if(!(_loc4_ && Boolean(this)))
                                                                                                                        {
                                                                                                                           §§push(§§newactivation());
                                                                                                                           if(!_loc4_)
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
                                                                                                      while(var _temp_17:* = §§pop(), §§pop().§§slot[4] = _temp_17, !(_loc4_ && Boolean(this)));
                                                                                                      
                                                                                                      return;
                                                                                                      addr02d3:
                                                                                                   }
                                                                                                   §§goto(addr0264);
                                                                                                }
                                                                                                §§goto(addr02d3);
                                                                                             }
                                                                                             §§goto(addr0264);
                                                                                          }
                                                                                          §§goto(addr0236);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr02d3);
                                                                                 }
                                                                                 §§goto(addr0266);
                                                                              }
                                                                              §§goto(addr0212);
                                                                           }
                                                                           §§goto(addr0266);
                                                                        }
                                                                        §§goto(addr0212);
                                                                     }
                                                                     §§goto(addr0198);
                                                                  }
                                                                  §§goto(addr0264);
                                                               }
                                                               §§goto(addr0266);
                                                            }
                                                            §§goto(addr01be);
                                                         }
                                                         §§goto(addr0167);
                                                      }
                                                      §§goto(addr02d3);
                                                   }
                                                   §§goto(addr0266);
                                                }
                                                §§goto(addr0236);
                                             }
                                             §§goto(addr0212);
                                          }
                                          §§goto(addr02d3);
                                       }
                                       §§goto(addr01ec);
                                    }
                                    §§goto(addr0236);
                                 }
                                 §§goto(addr00bf);
                              }
                              §§goto(addr00d0);
                           }
                           §§goto(addr00f9);
                        }
                        §§goto(addr0229);
                     }
                     §§goto(addr0068);
                  }
                  §§goto(addr0120);
               }
               §§goto(addr0110);
            }
            §§goto(addr0056);
         }
         §§goto(addr0120);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            RewardSlideListSkin._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            super.moduleFactory = param1;
            if(_loc3_ || Boolean(param1))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr005a);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         addr005a:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.initialize();
         }
      }
      
      private function _RewardSlideListSkin_NonScrollingDataGroup1_i() : NonScrollingDataGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:NonScrollingDataGroup = new NonScrollingDataGroup();
         if(!_loc3_)
         {
            _loc1_.width = 115;
            if(_loc2_)
            {
               _loc1_.height = 160;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.focusEnabled = false;
                  if(_loc2_)
                  {
                     _loc1_.layout = this._RewardSlideListSkin_HorizontalLayout1_c();
                     addr0048:
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc1_.addEventListener("updateComplete",this.__dataGroup_updateComplete);
                        if(!_loc3_)
                        {
                           _loc1_.id = "dataGroup";
                           if(!_loc3_)
                           {
                              addr0086:
                              if(!_loc1_.document)
                              {
                                 if(!_loc3_)
                                 {
                                    _loc1_.document = this;
                                    if(!_loc3_)
                                    {
                                       addr00a9:
                                       this.dataGroup = _loc1_;
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          addr00bb:
                                          BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                                       }
                                    }
                                    return _loc1_;
                                 }
                                 §§goto(addr00bb);
                              }
                              §§goto(addr00a9);
                           }
                        }
                     }
                  }
                  §§goto(addr00bb);
               }
            }
            §§goto(addr0086);
         }
         §§goto(addr0048);
      }
      
      private function _RewardSlideListSkin_HorizontalLayout1_c() : HorizontalLayout
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         if(_loc2_)
         {
            _loc1_.useVirtualLayout = true;
            if(_loc2_ || _loc3_)
            {
               _loc1_.clipAndEnableScrolling = true;
               if(!_loc3_)
               {
                  _loc1_.gap = 0;
                  if(_loc2_)
                  {
                     _loc1_.columnWidth = 115;
                     if(!_loc3_)
                     {
                        §§goto(addr0069);
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr007c);
               }
               addr0069:
               _loc1_.requestedMaxColumnCount = 1;
               if(_loc2_ || _loc3_)
               {
                  addr007c:
                  _loc1_.verticalAlign = "middle";
                  if(!_loc3_)
                  {
                     addr0087:
                     _loc1_.horizontalAlign = "center";
                  }
               }
               §§goto(addr008c);
            }
            addr008c:
            return _loc1_;
         }
         §§goto(addr0069);
      }
      
      public function __dataGroup_updateComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.hscrollerBar.scrollpositionChanged();
         }
      }
      
      private function _RewardSlideListSkin_CustomHScrollBar1_i() : CustomHScrollBar
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:CustomHScrollBar = new CustomHScrollBar();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.includeScroller = false;
            if(!_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  §§goto(addr0049);
               }
               §§goto(addr00b9);
            }
            addr0049:
            _loc1_.percentHeight = 100;
            if(_loc3_ || _loc2_)
            {
               addr0067:
               _loc1_.setStyle("skinClass",ItemviewHbarSkin);
               if(_loc3_)
               {
                  _loc1_.id = "hscrollerBar";
                  if(_loc3_ || _loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           addr00a8:
                           _loc1_.document = this;
                           if(_loc3_ || _loc3_)
                           {
                              addr00b9:
                              this.hscrollerBar = _loc1_;
                              if(!_loc2_)
                              {
                                 addr00c3:
                                 BindingManager.executeBindings(this,"hscrollerBar",this.hscrollerBar);
                              }
                           }
                        }
                        §§goto(addr00d0);
                     }
                     §§goto(addr00b9);
                  }
                  §§goto(addr00c3);
               }
               §§goto(addr00a8);
            }
            addr00d0:
            return _loc1_;
         }
         §§goto(addr0067);
      }
      
      private function _RewardSlideListSkin_bindingsSetup() : Array
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
      public function get dataGroup() : NonScrollingDataGroup
      {
         return this._385593099dataGroup;
      }
      
      public function set dataGroup(param1:NonScrollingDataGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._385593099dataGroup;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._385593099dataGroup = param1;
                  if(!_loc3_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr0057);
            }
            addr007d:
            return;
         }
         §§goto(addr0057);
      }
      
      [Bindable(event="propertyChange")]
      public function get hscrollerBar() : CustomHScrollBar
      {
         return this._1684366319hscrollerBar;
      }
      
      public function set hscrollerBar(param1:CustomHScrollBar) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1684366319hscrollerBar;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._1684366319hscrollerBar = param1;
                  if(_loc4_)
                  {
                     addr0063:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr007a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hscrollerBar",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0089);
               }
               §§goto(addr007a);
            }
            addr0089:
            return;
         }
         §§goto(addr0063);
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
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._213507019hostComponent = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0076);
      }
   }
}

