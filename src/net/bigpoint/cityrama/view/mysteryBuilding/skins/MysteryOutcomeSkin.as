package net.bigpoint.cityrama.view.mysteryBuilding.skins
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
   import net.bigpoint.util.LocaUtils;
   import spark.components.DataGroup;
   import spark.components.List;
   import spark.layouts.HorizontalLayout;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class MysteryOutcomeSkin extends SparkSkin implements IBindingClient, IStateClient2
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
      
      public function MysteryOutcomeSkin()
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
         if(_loc3_)
         {
            §§push(null);
            if(_loc3_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!(_loc4_ && _loc3_))
               {
                  §§push(§§newactivation());
                  if(!_loc4_)
                  {
                     §§push(null);
                     if(_loc3_ || _loc3_)
                     {
                        §§pop().§§slot[3] = §§pop();
                        if(!(_loc4_ && Boolean(this)))
                        {
                           §§push(§§newactivation());
                           if(!_loc4_)
                           {
                              addr0067:
                              §§pop().§§slot[5] = null;
                              addr0066:
                              if(_loc3_)
                              {
                                 this.mx_internal::_bindings = [];
                                 if(!(_loc4_ && Boolean(this)))
                                 {
                                    this.mx_internal::_watchers = [];
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(!(_loc4_ && _loc1_))
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(_loc3_)
                                          {
                                             super();
                                             if(_loc3_ || _loc1_)
                                             {
                                                mx_internal::_document = this;
                                                if(!_loc4_)
                                                {
                                                   addr00da:
                                                   §§push(§§newactivation());
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      §§pop().§§slot[1] = this._MysteryOutcomeSkin_bindingsSetup();
                                                      if(!_loc4_)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(!_loc4_)
                                                         {
                                                            §§pop().§§slot[2] = [];
                                                            if(!_loc4_)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(_loc3_ || _loc2_)
                                                               {
                                                                  §§pop().§§slot[3] = this;
                                                                  if(!(_loc4_ && Boolean(this)))
                                                                  {
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(_loc3_)
                                                                           {
                                                                              addr0151:
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_mysteryBuilding_skins_MysteryOutcomeSkinWatcherSetupUtil");
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr016c:
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(_loc3_ || _loc3_)
                                                                                    {
                                                                                       addr018a:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return MysteryOutcomeSkin[param1];
                                                                                       },bindings,watchers);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr01a8:
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(_loc3_ || _loc1_)
                                                                                          {
                                                                                             addr01d6:
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                addr01fc:
                                                                                                this.mxmlContent = [this._MysteryOutcomeSkin_DataGroup1_i(),this._MysteryOutcomeSkin_CustomHScrollBar1_i()];
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   this.currentState = "normal";
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      addr021f:
                                                                                                      states = [new State({
                                                                                                         "name":"normal",
                                                                                                         "overrides":[]
                                                                                                      }),new State({
                                                                                                         "name":"disabled",
                                                                                                         "overrides":[]
                                                                                                      })];
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         addr024f:
                                                                                                         i = 0;
                                                                                                         addr024d:
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
                                                                                                                  break loop1;
                                                                                                               }
                                                                                                               Binding(bindings[i]).execute();
                                                                                                               if(!(_loc3_ || _loc1_))
                                                                                                               {
                                                                                                                  break loop2;
                                                                                                               }
                                                                                                               §§push(§§newactivation());
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  §§push(§§pop().§§slot[4]);
                                                                                                                  if(_loc4_ && _loc3_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(uint(§§pop() + 1));
                                                                                                                  if(_loc4_ && _loc3_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     var _temp_19:* = §§pop();
                                                                                                                     §§pop().§§slot[4] = _temp_19;
                                                                                                                     if(_loc3_)
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
                                                                                                   addr02ba:
                                                                                                }
                                                                                                §§goto(addr024d);
                                                                                             }
                                                                                             §§goto(addr02ba);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr01fc);
                                                                                 }
                                                                                 §§goto(addr024f);
                                                                              }
                                                                              §§goto(addr021f);
                                                                           }
                                                                           §§goto(addr016c);
                                                                        }
                                                                        §§goto(addr021f);
                                                                     }
                                                                     §§goto(addr018a);
                                                                  }
                                                                  §§goto(addr01d6);
                                                               }
                                                               §§goto(addr016c);
                                                            }
                                                            §§goto(addr021f);
                                                         }
                                                         §§goto(addr016c);
                                                      }
                                                      §§goto(addr024d);
                                                   }
                                                   §§goto(addr024f);
                                                }
                                                §§goto(addr018a);
                                             }
                                             §§goto(addr02ba);
                                          }
                                          §§goto(addr01d6);
                                       }
                                    }
                                    §§goto(addr024d);
                                 }
                              }
                              §§goto(addr01a8);
                           }
                           §§goto(addr016c);
                        }
                        §§goto(addr00da);
                     }
                     §§goto(addr0067);
                  }
                  §§goto(addr0151);
               }
               §§goto(addr01d6);
            }
            §§goto(addr0067);
         }
         §§goto(addr0066);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            MysteryOutcomeSkin._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               §§goto(addr0034);
            }
            §§goto(addr0042);
         }
         addr0034:
         if(this.__moduleFactoryInitialized)
         {
            if(_loc3_)
            {
               addr0042:
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
         if(!_loc1_)
         {
            super.initialize();
         }
      }
      
      private function handleUpdateComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.hscrollerBar);
            if(_loc2_)
            {
               §§pop().scrollpositionChanged();
               if(!(_loc3_ && Boolean(param1)))
               {
                  §§push(this.hscrollerBar);
                  if(_loc2_ || _loc3_)
                  {
                     if(!§§pop().decrementButton.toolTip)
                     {
                        if(_loc2_)
                        {
                           §§push(this.hscrollerBar);
                           if(_loc2_)
                           {
                              addr006c:
                              §§pop().decrementButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.leftArrow");
                              if(_loc2_ || Boolean(this))
                              {
                                 addr0093:
                                 §§push(this.hscrollerBar);
                                 if(!_loc3_)
                                 {
                                    if(!§§pop().incrementButton.toolTip)
                                    {
                                       if(!_loc3_)
                                       {
                                          addr00ae:
                                          this.hscrollerBar.incrementButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.rightArrow");
                                          addr00aa:
                                       }
                                    }
                                    §§goto(addr00be);
                                 }
                                 §§goto(addr00ae);
                              }
                              §§goto(addr00be);
                           }
                           §§goto(addr00ae);
                        }
                        addr00be:
                        return;
                     }
                     §§goto(addr0093);
                  }
                  §§goto(addr006c);
               }
               §§goto(addr0093);
            }
            §§goto(addr00ae);
         }
         §§goto(addr00aa);
      }
      
      private function _MysteryOutcomeSkin_DataGroup1_i() : DataGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DataGroup = new DataGroup();
         if(_loc3_)
         {
            _loc1_.left = 38;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.right = 38;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.percentHeight = 100;
                  if(!_loc2_)
                  {
                     _loc1_.percentWidth = 100;
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.focusEnabled = false;
                        if(_loc3_)
                        {
                           _loc1_.layout = this._MysteryOutcomeSkin_HorizontalLayout1_c();
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              addr008e:
                              _loc1_.addEventListener("updateComplete",this.__dataGroup_updateComplete);
                              if(!_loc2_)
                              {
                                 addr009e:
                                 _loc1_.id = "dataGroup";
                                 if(!_loc2_)
                                 {
                                    addr00b9:
                                    if(!_loc1_.document)
                                    {
                                       if(_loc3_)
                                       {
                                          §§goto(addr00c5);
                                       }
                                    }
                                    §§goto(addr00ce);
                                 }
                                 addr00c5:
                                 _loc1_.document = this;
                                 if(_loc3_)
                                 {
                                    addr00ce:
                                    this.dataGroup = _loc1_;
                                    if(!_loc2_)
                                    {
                                       addr00d8:
                                       BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                                    }
                                 }
                                 §§goto(addr00e5);
                              }
                              §§goto(addr00d8);
                           }
                           §§goto(addr00e5);
                        }
                        §§goto(addr009e);
                     }
                     §§goto(addr00b9);
                  }
               }
               §§goto(addr008e);
            }
            §§goto(addr009e);
         }
         addr00e5:
         return _loc1_;
      }
      
      private function _MysteryOutcomeSkin_HorizontalLayout1_c() : HorizontalLayout
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         if(!_loc2_)
         {
            _loc1_.useVirtualLayout = true;
            if(!_loc2_)
            {
               addr0039:
               _loc1_.requestedColumnCount = 3;
               if(_loc3_)
               {
                  _loc1_.requestedMaxColumnCount = 3;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.columnWidth = 118;
                     if(!(_loc2_ && _loc3_))
                     {
                        addr0075:
                        _loc1_.clipAndEnableScrolling = true;
                     }
                  }
                  §§goto(addr007a);
               }
               §§goto(addr0075);
            }
            addr007a:
            return _loc1_;
         }
         §§goto(addr0039);
      }
      
      public function __dataGroup_updateComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.handleUpdateComplete(param1);
         }
      }
      
      private function _MysteryOutcomeSkin_CustomHScrollBar1_i() : CustomHScrollBar
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:CustomHScrollBar = new CustomHScrollBar();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  _loc1_.setStyle("skinClass",ItemviewHbarSkin);
                  if(!_loc2_)
                  {
                     _loc1_.id = "hscrollerBar";
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr0087:
                              _loc1_.document = this;
                              if(_loc3_ || _loc2_)
                              {
                                 addr0098:
                                 this.hscrollerBar = _loc1_;
                                 if(_loc3_)
                                 {
                                    addr00a2:
                                    BindingManager.executeBindings(this,"hscrollerBar",this.hscrollerBar);
                                 }
                              }
                              §§goto(addr00af);
                           }
                           §§goto(addr00a2);
                        }
                        §§goto(addr0098);
                     }
                     §§goto(addr00af);
                  }
               }
               §§goto(addr0087);
            }
         }
         addr00af:
         return _loc1_;
      }
      
      private function _MysteryOutcomeSkin_bindingsSetup() : Array
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Array = [];
         if(!_loc3_)
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
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._385593099dataGroup;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._385593099dataGroup = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0066);
            }
            addr0075:
            return;
         }
         §§goto(addr0066);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1684366319hscrollerBar = param1;
                  if(_loc4_)
                  {
                     addr0045:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hscrollerBar",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0045);
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
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  addr0046:
                  this._213507019hostComponent = param1;
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr0065);
                  }
                  §§goto(addr007d);
               }
               addr0065:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr007d:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                  }
               }
               §§goto(addr008c);
            }
            addr008c:
            return;
         }
         §§goto(addr0046);
      }
   }
}

