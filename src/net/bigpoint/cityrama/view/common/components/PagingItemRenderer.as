package net.bigpoint.cityrama.view.common.components
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
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.styles.*;
   import spark.components.supportClasses.ItemRenderer;
   
   use namespace mx_internal;
   
   public class PagingItemRenderer extends ItemRenderer implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _1300670980_PagingItemRenderer_LocaLabel1:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function PagingItemRenderer()
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
         if(!(_loc3_ && _loc3_))
         {
            §§push(null);
            if(_loc4_)
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc4_)
               {
                  §§push(§§newactivation());
                  if(_loc4_)
                  {
                     §§push(null);
                     if(_loc4_ || _loc2_)
                     {
                        addr004d:
                        §§pop().§§slot[3] = §§pop();
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(§§newactivation());
                           if(!_loc3_)
                           {
                              addr0066:
                              §§pop().§§slot[5] = null;
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 this.mx_internal::_bindings = [];
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr008a:
                                    this.mx_internal::_watchers = [];
                                    if(_loc4_ || _loc3_)
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(!(_loc3_ && Boolean(this)))
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(_loc4_)
                                          {
                                             super();
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                mx_internal::_document = this;
                                                if(!_loc3_)
                                                {
                                                   addr00df:
                                                   §§push(§§newactivation());
                                                   if(_loc4_)
                                                   {
                                                      addr00e7:
                                                      §§pop().§§slot[1] = this._PagingItemRenderer_bindingsSetup();
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            §§pop().§§slot[2] = [];
                                                            if(!_loc3_)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(_loc4_)
                                                               {
                                                                  addr0121:
                                                                  §§pop().§§slot[3] = this;
                                                                  if(_loc4_ || Boolean(this))
                                                                  {
                                                                     addr0134:
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(!_loc3_)
                                                                           {
                                                                              addr0148:
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_common_components_PagingItemRendererWatcherSetupUtil");
                                                                              if(!_loc3_)
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    addr0162:
                                                                                    if(!(_loc3_ && _loc2_))
                                                                                    {
                                                                                       addr018a:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return PagingItemRenderer[param1];
                                                                                       },bindings,watchers);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(_loc4_ || _loc2_)
                                                                                          {
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                addr01fa:
                                                                                                this.autoDrawBackground = false;
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   addr0205:
                                                                                                   this.mxmlContent = [this._PagingItemRenderer_LocaLabel1_i()];
                                                                                                   if(!(_loc3_ && Boolean(this)))
                                                                                                   {
                                                                                                      addr021d:
                                                                                                      this.currentState = "normal";
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         addr022a:
                                                                                                         this.addEventListener("click",this.___PagingItemRenderer_ItemRenderer1_click);
                                                                                                         if(_loc4_ || _loc1_)
                                                                                                         {
                                                                                                            addr0244:
                                                                                                            states = [new State({
                                                                                                               "name":"normal",
                                                                                                               "overrides":[]
                                                                                                            }),new State({
                                                                                                               "name":"disabled",
                                                                                                               "overrides":[]
                                                                                                            }),new State({
                                                                                                               "name":"selected",
                                                                                                               "overrides":[new SetProperty().initializeFromObject({
                                                                                                                  "target":"_PagingItemRenderer_LocaLabel1",
                                                                                                                  "name":"styleName",
                                                                                                                  "value":"pagingTextSelected"
                                                                                                               })]
                                                                                                            })];
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               addr029f:
                                                                                                               i = 0;
                                                                                                               addr029d:
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
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           break loop1;
                                                                                                                        }
                                                                                                                        §§push(§§newactivation());
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().§§slot[4]);
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§push(uint(§§pop() + 1));
                                                                                                                           if(!(_loc4_ || Boolean(this)))
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§push(§§newactivation());
                                                                                                                           if(_loc4_)
                                                                                                                           {
                                                                                                                              var _temp_23:* = §§pop();
                                                                                                                              §§pop().§§slot[4] = _temp_23;
                                                                                                                              if(_loc4_ || Boolean(this))
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
                                                                                                            addr0306:
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr029d);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr0306);
                                                                                          }
                                                                                          §§goto(addr022a);
                                                                                       }
                                                                                       §§goto(addr021d);
                                                                                    }
                                                                                    §§goto(addr0244);
                                                                                 }
                                                                                 §§goto(addr029f);
                                                                              }
                                                                              §§goto(addr0306);
                                                                           }
                                                                           §§goto(addr029f);
                                                                        }
                                                                        §§goto(addr021d);
                                                                     }
                                                                     §§goto(addr018a);
                                                                  }
                                                                  §§goto(addr029d);
                                                               }
                                                               §§goto(addr0148);
                                                            }
                                                            §§goto(addr0134);
                                                         }
                                                         §§goto(addr0121);
                                                      }
                                                      §§goto(addr029d);
                                                   }
                                                   §§goto(addr0162);
                                                }
                                                §§goto(addr029d);
                                             }
                                             §§goto(addr018a);
                                          }
                                          §§goto(addr01fa);
                                       }
                                       §§goto(addr0205);
                                    }
                                    §§goto(addr00df);
                                 }
                                 §§goto(addr022a);
                              }
                              §§goto(addr018a);
                           }
                           §§goto(addr00e7);
                        }
                        §§goto(addr008a);
                     }
                     §§goto(addr0066);
                  }
                  §§goto(addr029f);
               }
               §§goto(addr00df);
            }
            §§goto(addr004d);
         }
         §§goto(addr00e7);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            PagingItemRenderer._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            super.moduleFactory = param1;
            if(!(_loc3_ && _loc2_))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     §§goto(addr005b);
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
            return;
         }
         addr005b:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.initialize();
         }
      }
      
      private function handleClick() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            if(!this.selected)
            {
               if(_loc2_)
               {
                  addr0035:
                  dispatchEvent(new Event("rendererClick",true));
               }
            }
            return;
         }
         §§goto(addr0035);
      }
      
      private function _PagingItemRenderer_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.styleName = "pagingTextNormal";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.id = "_PagingItemRenderer_LocaLabel1";
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        _loc1_.document = this;
                        if(!_loc3_)
                        {
                           addr0073:
                           this._PagingItemRenderer_LocaLabel1 = _loc1_;
                           if(!(_loc3_ && _loc3_))
                           {
                              BindingManager.executeBindings(this,"_PagingItemRenderer_LocaLabel1",this._PagingItemRenderer_LocaLabel1);
                           }
                        }
                        §§goto(addr0092);
                     }
                  }
                  §§goto(addr0073);
               }
            }
            addr0092:
            return _loc1_;
         }
         §§goto(addr0073);
      }
      
      public function ___PagingItemRenderer_ItemRenderer1_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.handleClick();
         }
      }
      
      private function _PagingItemRenderer_bindingsSetup() : Array
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Array = [];
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_[0] = new Binding(this,null,null,"_PagingItemRenderer_LocaLabel1.text","data");
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get _PagingItemRenderer_LocaLabel1() : LocaLabel
      {
         return this._1300670980_PagingItemRenderer_LocaLabel1;
      }
      
      public function set _PagingItemRenderer_LocaLabel1(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1300670980_PagingItemRenderer_LocaLabel1;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._1300670980_PagingItemRenderer_LocaLabel1 = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     addr0062:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_PagingItemRenderer_LocaLabel1",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0081);
               }
               §§goto(addr0062);
            }
         }
         addr0081:
      }
   }
}

