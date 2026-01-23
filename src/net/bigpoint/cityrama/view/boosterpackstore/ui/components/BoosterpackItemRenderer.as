package net.bigpoint.cityrama.view.boosterpackstore.ui.components
{
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.ItemClickEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.model.boosterpack.vo.BoosterpackVo;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.supportClasses.ItemRenderer;
   
   public class BoosterpackItemRenderer extends ItemRenderer implements IStateClient2
   {
      
      private var _951530617content:GridItemComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:BoosterpackVo;
      
      private var _dataIsDirty:Boolean = false;
      
      public function BoosterpackItemRenderer()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super();
            if(_loc2_)
            {
               mx_internal::_document = this;
               if(_loc2_)
               {
                  this.autoDrawBackground = false;
                  if(!(_loc1_ && _loc2_))
                  {
                     this.width = 120;
                     if(!_loc1_)
                     {
                        this.height = 150;
                        if(!_loc1_)
                        {
                           this.mxmlContent = [this._BoosterpackItemRenderer_GridItemComponent1_i()];
                           if(!(_loc1_ && Boolean(this)))
                           {
                              addr0081:
                              this.currentState = "normal";
                              if(!_loc1_)
                              {
                                 addr008d:
                                 this.addEventListener("rollOut",this.___BoosterpackItemRenderer_ItemRenderer1_rollOut);
                                 if(!_loc1_)
                                 {
                                    §§goto(addr009e);
                                 }
                              }
                              §§goto(addr00da);
                           }
                        }
                        §§goto(addr008d);
                     }
                     §§goto(addr0081);
                  }
                  §§goto(addr00da);
               }
               addr009e:
               this.addEventListener("rollOver",this.___BoosterpackItemRenderer_ItemRenderer1_rollOver);
               if(!(_loc1_ && _loc2_))
               {
                  addr00b7:
                  this.addEventListener("click",this.___BoosterpackItemRenderer_ItemRenderer1_click);
                  if(_loc2_ || _loc1_)
                  {
                     addr00da:
                     states = [new State({
                        "name":"normal",
                        "overrides":[]
                     }),new State({
                        "name":"disabled",
                        "overrides":[]
                     })];
                  }
               }
               return;
            }
            §§goto(addr0081);
         }
         §§goto(addr00b7);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            super.moduleFactory = param1;
            if(_loc2_ || Boolean(this))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr004a);
                  }
               }
               this.__moduleFactoryInitialized = true;
               return;
            }
         }
         addr004a:
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
      
      override public function set data(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            §§push(param1 is BoosterpackVo);
            if(_loc3_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr005e:
                     if(!RandomUtilities.isEqual(param1,this._data))
                     {
                        if(!_loc2_)
                        {
                           super.data = param1;
                           if(!_loc2_)
                           {
                              addr0070:
                              this._data = param1 as BoosterpackVo;
                              if(!_loc2_)
                              {
                                 this._dataIsDirty = true;
                                 if(_loc3_)
                                 {
                                    addr0088:
                                    invalidateProperties();
                                 }
                                 §§goto(addr008d);
                              }
                              §§goto(addr0088);
                           }
                           §§goto(addr008d);
                        }
                        §§goto(addr0070);
                     }
                  }
               }
               addr008d:
               return;
            }
            §§goto(addr005e);
         }
         §§goto(addr0070);
      }
      
      protected function clickHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:ItemClickEvent = new ItemClickEvent(ItemClickEvent.ITEM_CLICK,true);
         if(_loc3_ || Boolean(_loc2_))
         {
            _loc2_.item = this._data;
            if(_loc3_ || _loc3_)
            {
               _loc2_.index = itemIndex;
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  dispatchEvent(_loc2_);
               }
            }
         }
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super.commitProperties();
            if(!_loc1_)
            {
               if(this._dataIsDirty)
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     this._dataIsDirty = false;
                     if(_loc2_)
                     {
                        addr005b:
                        §§push(this.content);
                        if(!(_loc1_ && _loc1_))
                        {
                           §§pop().data = this._data;
                           if(!_loc1_)
                           {
                              addr007b:
                              this.content.itemIndex = itemIndex;
                              addr0077:
                           }
                           §§goto(addr0081);
                        }
                        §§goto(addr007b);
                     }
                     §§goto(addr0081);
                  }
                  §§goto(addr005b);
               }
               addr0081:
               return;
            }
            §§goto(addr005b);
         }
         §§goto(addr0077);
      }
      
      private function rollOutHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            dispatchEvent(new UIInfolayerDispatcherEvent(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER));
         }
      }
      
      private function rollOverHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            dispatchEvent(new UIInfolayerDispatcherEvent(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,UIInfolayerDispatcherEvent.CALLER_TYPE_BOOSTER,this._data.config.id));
         }
      }
      
      private function _BoosterpackItemRenderer_GridItemComponent1_i() : GridItemComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:GridItemComponent = new GridItemComponent();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr0052:
                  _loc1_.id = "content";
                  if(_loc3_ || _loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           _loc1_.document = this;
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              §§goto(addr0098);
                           }
                           §§goto(addr00aa);
                        }
                     }
                  }
                  addr0098:
                  this.content = _loc1_;
                  if(_loc3_ || Boolean(this))
                  {
                     addr00aa:
                     BindingManager.executeBindings(this,"content",this.content);
                  }
                  §§goto(addr00b7);
               }
               addr00b7:
               return _loc1_;
            }
            §§goto(addr0098);
         }
         §§goto(addr0052);
      }
      
      public function ___BoosterpackItemRenderer_ItemRenderer1_rollOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this.rollOutHandler(param1);
         }
      }
      
      public function ___BoosterpackItemRenderer_ItemRenderer1_rollOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this.rollOverHandler(param1);
         }
      }
      
      public function ___BoosterpackItemRenderer_ItemRenderer1_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.clickHandler(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get content() : GridItemComponent
      {
         return this._951530617content;
      }
      
      public function set content(param1:GridItemComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._951530617content;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._951530617content = param1;
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"content",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr006d);
               }
            }
            addr007c:
            return;
         }
         §§goto(addr006d);
      }
   }
}

