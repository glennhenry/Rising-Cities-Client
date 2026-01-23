package net.bigpoint.cityrama.view.friendBook.ui.components
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
   import mx.events.ItemClickEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.friends.vo.FriendVo;
   import spark.components.supportClasses.ItemRenderer;
   
   use namespace mx_internal;
   
   public class FriendBookItemRenderer extends ItemRenderer implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _951530617content:GridItemFriendBookComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _friendVo:FriendVo;
      
      private var _dirty:Boolean;
      
      private var _isEmpty:Boolean = true;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function FriendBookItemRenderer()
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
               if(_loc3_ || _loc2_)
               {
                  §§push(§§newactivation());
                  if(!_loc4_)
                  {
                     addr003d:
                     §§push(null);
                     if(_loc3_)
                     {
                        §§pop().§§slot[3] = §§pop();
                        if(_loc3_ || Boolean(this))
                        {
                           §§push(§§newactivation());
                           if(_loc3_)
                           {
                              addr005c:
                              §§pop().§§slot[5] = null;
                              if(!(_loc4_ && _loc1_))
                              {
                                 this.mx_internal::_bindings = [];
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    this.mx_internal::_watchers = [];
                                    if(_loc3_ || _loc3_)
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(_loc3_ || _loc2_)
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(!(_loc4_ && _loc1_))
                                          {
                                             super();
                                             if(_loc3_)
                                             {
                                                mx_internal::_document = this;
                                                if(_loc3_)
                                                {
                                                   addr00d6:
                                                   §§push(§§newactivation());
                                                   if(!_loc4_)
                                                   {
                                                      §§pop().§§slot[1] = this._FriendBookItemRenderer_bindingsSetup();
                                                      if(!_loc4_)
                                                      {
                                                         addr00ee:
                                                         §§push(§§newactivation());
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            addr00fe:
                                                            §§pop().§§slot[2] = [];
                                                            if(!_loc4_)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(_loc3_)
                                                               {
                                                                  §§pop().§§slot[3] = this;
                                                                  if(_loc3_ || _loc1_)
                                                                  {
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(!(_loc4_ && _loc1_))
                                                                        {
                                                                           addr0139:
                                                                           §§push(§§newactivation());
                                                                           if(!_loc4_)
                                                                           {
                                                                              addr0141:
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_friendBook_ui_components_FriendBookItemRendererWatcherSetupUtil");
                                                                              if(!_loc4_)
                                                                              {
                                                                                 addr0155:
                                                                                 §§push(§§newactivation());
                                                                                 if(!(_loc4_ && _loc3_))
                                                                                 {
                                                                                    addr0171:
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr0188:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return FriendBookItemRenderer[param1];
                                                                                       },bindings,watchers);
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          addr01a5:
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                addr01f3:
                                                                                                this.autoDrawBackground = false;
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   addr01fd:
                                                                                                   this.width = 132;
                                                                                                   if(!(_loc4_ && _loc2_))
                                                                                                   {
                                                                                                      addr0211:
                                                                                                      this.height = 160;
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         this.mxmlContent = [this._FriendBookItemRenderer_GridItemFriendBookComponent1_i()];
                                                                                                         if(!(_loc4_ && _loc1_))
                                                                                                         {
                                                                                                            addr0235:
                                                                                                            this.currentState = "normal";
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               addr0241:
                                                                                                               this.addEventListener("click",this.___FriendBookItemRenderer_ItemRenderer1_click);
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  addr0253:
                                                                                                                  states = [new State({
                                                                                                                     "name":"normal",
                                                                                                                     "overrides":[]
                                                                                                                  }),new State({
                                                                                                                     "name":"disabled",
                                                                                                                     "overrides":[]
                                                                                                                  })];
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     addr0283:
                                                                                                                     i = 0;
                                                                                                                     addr0281:
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
                                                                                                                              if(_loc4_ && _loc2_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§push(§§newactivation());
                                                                                                                              if(_loc3_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().§§slot[4]);
                                                                                                                                 if(!(_loc4_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(uint(§§pop() + 1));
                                                                                                                                    if(!_loc3_)
                                                                                                                                    {
                                                                                                                                       continue loop2;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§push(§§newactivation());
                                                                                                                                 if(_loc3_ || _loc1_)
                                                                                                                                 {
                                                                                                                                    var _temp_24:* = §§pop();
                                                                                                                                    §§pop().§§slot[4] = _temp_24;
                                                                                                                                    if(_loc3_ || Boolean(this))
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    break loop2;
                                                                                                                                 }
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              continue loop1;
                                                                                                                           }
                                                                                                                           break loop1;
                                                                                                                        }
                                                                                                                        break loop0;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  return;
                                                                                                                  addr02f6:
                                                                                                               }
                                                                                                               §§goto(addr0281);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr02f6);
                                                                                                      }
                                                                                                      §§goto(addr0253);
                                                                                                   }
                                                                                                   §§goto(addr0235);
                                                                                                }
                                                                                                §§goto(addr0211);
                                                                                             }
                                                                                             §§goto(addr02f6);
                                                                                          }
                                                                                          §§goto(addr0241);
                                                                                       }
                                                                                       §§goto(addr0253);
                                                                                    }
                                                                                    §§goto(addr0241);
                                                                                 }
                                                                                 §§goto(addr0283);
                                                                              }
                                                                              §§goto(addr0211);
                                                                           }
                                                                           §§goto(addr0171);
                                                                        }
                                                                        §§goto(addr01f3);
                                                                     }
                                                                     §§goto(addr0188);
                                                                  }
                                                                  §§goto(addr01fd);
                                                               }
                                                               §§goto(addr0141);
                                                            }
                                                            §§goto(addr0188);
                                                         }
                                                         §§goto(addr0283);
                                                      }
                                                      §§goto(addr0155);
                                                   }
                                                   §§goto(addr00fe);
                                                }
                                                §§goto(addr0253);
                                             }
                                             §§goto(addr00ee);
                                          }
                                          §§goto(addr02f6);
                                       }
                                       §§goto(addr01a5);
                                    }
                                    §§goto(addr00d6);
                                 }
                                 §§goto(addr0139);
                              }
                              §§goto(addr01a5);
                           }
                           §§goto(addr0141);
                        }
                        §§goto(addr01a5);
                     }
                     §§goto(addr005c);
                  }
                  §§goto(addr00fe);
               }
               §§goto(addr0241);
            }
            §§goto(addr005c);
         }
         §§goto(addr003d);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            FriendBookItemRenderer._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            super.moduleFactory = param1;
            if(_loc2_ || Boolean(param1))
            {
               §§goto(addr003c);
            }
            §§goto(addr004a);
         }
         addr003c:
         if(this.__moduleFactoryInitialized)
         {
            if(_loc2_)
            {
               addr004a:
               return;
            }
         }
         this.__moduleFactoryInitialized = true;
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
      
      override protected function stateChanged(param1:String, param2:String, param3:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!(_loc4_ && Boolean(this)))
         {
            super.stateChanged(param1,param2,param3);
         }
      }
      
      override public function set data(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            if(param1 is FriendVo)
            {
               if(_loc3_ || Boolean(param1))
               {
                  addr0037:
                  if(param1 != this._friendVo)
                  {
                     if(!(_loc2_ && Boolean(param1)))
                     {
                        super.data = param1;
                        if(!_loc2_)
                        {
                           this._friendVo = param1 as FriendVo;
                           if(_loc3_)
                           {
                              addr007e:
                              this._dirty = true;
                              if(_loc3_)
                              {
                                 addr0089:
                                 this._isEmpty = this._friendVo.isEmpty;
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr00a2:
                                    invalidateProperties();
                                 }
                                 §§goto(addr00a7);
                              }
                           }
                           §§goto(addr00a2);
                        }
                        §§goto(addr00a7);
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr00a7);
               }
               §§goto(addr0089);
            }
            addr00a7:
            return;
         }
         §§goto(addr0037);
      }
      
      protected function clickHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            if(this._isEmpty)
            {
               if(_loc3_)
               {
                  §§goto(addr0047);
               }
            }
            var _loc2_:ItemClickEvent = new ItemClickEvent(ItemClickEvent.ITEM_CLICK,true);
            if(!_loc4_)
            {
               _loc2_.item = data;
               if(!_loc4_)
               {
                  _loc2_.index = itemIndex;
                  if(!_loc4_)
                  {
                     addr0079:
                     dispatchEvent(_loc2_);
                  }
                  return;
               }
            }
            §§goto(addr0079);
         }
         addr0047:
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super.commitProperties();
            if(_loc1_ || Boolean(this))
            {
               §§goto(addr0039);
            }
            §§goto(addr004f);
         }
         addr0039:
         if(this._dirty)
         {
            if(!(_loc2_ && _loc2_))
            {
               addr004f:
               this.content.data = this._friendVo;
            }
         }
      }
      
      private function _FriendBookItemRenderer_GridItemFriendBookComponent1_i() : GridItemFriendBookComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:GridItemFriendBookComponent = new GridItemFriendBookComponent();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(this)))
            {
               addr0036:
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.id = "content";
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr0078:
                           _loc1_.document = this;
                           if(_loc3_ || _loc3_)
                           {
                              §§goto(addr0089);
                           }
                           §§goto(addr0093);
                        }
                     }
                     addr0089:
                     this.content = _loc1_;
                     if(!_loc2_)
                     {
                        addr0093:
                        BindingManager.executeBindings(this,"content",this.content);
                     }
                     return _loc1_;
                  }
                  §§goto(addr0093);
               }
            }
            §§goto(addr0078);
         }
         §§goto(addr0036);
      }
      
      public function ___FriendBookItemRenderer_ItemRenderer1_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this.clickHandler(param1);
         }
      }
      
      private function _FriendBookItemRenderer_bindingsSetup() : Array
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Array = [];
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_[0] = new Binding(this,null,null,"content.itemIndex","itemIndex");
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get content() : GridItemFriendBookComponent
      {
         return this._951530617content;
      }
      
      public function set content(param1:GridItemFriendBookComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._951530617content;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._951530617content = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"content",_loc2_,param1));
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
   }
}

