package net.bigpoint.cityrama.view.architectBook.ui.components
{
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.ItemClickEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.model.architecturalBook.vo.BlueprintVo;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.supportClasses.ItemRenderer;
   
   public class ArchitectItemRenderer extends ItemRenderer implements IStateClient2
   {
      
      private var _951530617content:GridItemComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _blueprintVo:BlueprintVo;
      
      private var _dataIsDirty:Boolean = false;
      
      public function ArchitectItemRenderer()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super();
            if(!(_loc2_ && Boolean(this)))
            {
               mx_internal::_document = this;
               if(!_loc2_)
               {
                  addr003f:
                  this.autoDrawBackground = false;
                  if(_loc1_)
                  {
                     this.width = 120;
                     if(_loc1_ || _loc2_)
                     {
                        this.height = 150;
                        if(_loc1_)
                        {
                           this.mxmlContent = [this._ArchitectItemRenderer_GridItemComponent1_i()];
                           if(!_loc2_)
                           {
                              this.currentState = "normal";
                              if(!_loc2_)
                              {
                                 §§goto(addr008c);
                              }
                           }
                        }
                        §§goto(addr00d1);
                     }
                     addr008c:
                     this.addEventListener("click",this.___ArchitectItemRenderer_ItemRenderer1_click);
                     if(!_loc2_)
                     {
                        addr009d:
                        this.addEventListener("rollOut",this.___ArchitectItemRenderer_ItemRenderer1_rollOut);
                        if(!_loc2_)
                        {
                           §§goto(addr00ae);
                        }
                        §§goto(addr00d1);
                     }
                     addr00ae:
                     this.addEventListener("rollOver",this.___ArchitectItemRenderer_ItemRenderer1_rollOver);
                     if(!(_loc2_ && _loc2_))
                     {
                        addr00d1:
                        states = [new State({
                           "name":"normal",
                           "overrides":[]
                        }),new State({
                           "name":"disabled",
                           "overrides":[]
                        })];
                     }
                     return;
                  }
                  §§goto(addr00d1);
               }
               §§goto(addr009d);
            }
            §§goto(addr00d1);
         }
         §§goto(addr003f);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            super.moduleFactory = param1;
            if(!(_loc3_ && Boolean(param1)))
            {
               §§goto(addr003d);
            }
            §§goto(addr0058);
         }
         addr003d:
         if(this.__moduleFactoryInitialized)
         {
            if(_loc2_ || _loc2_)
            {
               return;
            }
         }
         else
         {
            addr0058:
            this.__moduleFactoryInitialized = true;
         }
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super.initialize();
         }
      }
      
      override public function set data(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            §§push(param1 is BlueprintVo);
            if(_loc2_)
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               §§push(_temp_2);
               if(!_loc3_)
               {
                  if(!§§pop())
                  {
                     if(!_loc3_)
                     {
                        §§pop();
                        if(!_loc3_)
                        {
                           §§push(param1 == null);
                           if(!(_loc3_ && _loc2_))
                           {
                              §§goto(addr0050);
                           }
                           §§goto(addr0082);
                        }
                        §§goto(addr0059);
                     }
                  }
                  addr0050:
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        addr0059:
                        §§push(RandomUtilities.isEqual(param1,this._blueprintVo));
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           §§push(!§§pop());
                           if(!_loc3_)
                           {
                              addr0082:
                              var _temp_5:* = §§pop();
                              addr0083:
                              §§push(_temp_5);
                              if(!_temp_5)
                              {
                                 if(_loc2_)
                                 {
                                    §§pop();
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       addr009d:
                                       if(param1 == null)
                                       {
                                          if(!(_loc3_ && Boolean(this)))
                                          {
                                             super.data = param1;
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                addr00cb:
                                                this._blueprintVo = param1 as BlueprintVo;
                                                if(_loc2_)
                                                {
                                                   addr00d9:
                                                   this._dataIsDirty = true;
                                                   if(!_loc3_)
                                                   {
                                                      invalidateProperties();
                                                   }
                                                }
                                             }
                                             §§goto(addr00e8);
                                          }
                                          §§goto(addr00d9);
                                       }
                                    }
                                    §§goto(addr00e8);
                                 }
                              }
                           }
                        }
                        §§goto(addr009d);
                     }
                     §§goto(addr00cb);
                  }
                  addr00e8:
                  return;
               }
               §§goto(addr0083);
            }
            §§goto(addr009d);
         }
         §§goto(addr00d9);
      }
      
      protected function clickHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:ItemClickEvent = new ItemClickEvent(ItemClickEvent.ITEM_CLICK,true);
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            _loc2_.item = data;
            if(_loc3_)
            {
               _loc2_.index = itemIndex;
               if(_loc3_ || _loc3_)
               {
                  this.updateVisibilityNewIconInGridItemComponent(false);
                  if(!_loc4_)
                  {
                     addr0078:
                     dispatchEvent(_loc2_);
                  }
                  §§goto(addr007e);
               }
               §§goto(addr0078);
            }
         }
         addr007e:
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.commitProperties();
            if(_loc2_ || Boolean(this))
            {
               §§goto(addr0028);
            }
            §§goto(addr0077);
         }
         addr0028:
         if(this._dataIsDirty)
         {
            if(_loc2_)
            {
               this._dataIsDirty = false;
               if(_loc2_ || _loc1_)
               {
                  addr005b:
                  §§push(this.content);
                  if(_loc2_)
                  {
                     §§pop().data = this._blueprintVo;
                     if(!(_loc1_ && Boolean(this)))
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
      }
      
      private function rollOverHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            §§push(this._blueprintVo);
            if(_loc2_ || _loc3_)
            {
               §§push(§§pop() == null);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(!§§pop());
                  if(_loc2_ || Boolean(this))
                  {
                     var _temp_5:* = §§pop();
                     §§push(_temp_5);
                     if(_temp_5)
                     {
                        if(_loc2_)
                        {
                           addr0064:
                           §§pop();
                           if(!_loc3_)
                           {
                              §§goto(addr0086);
                           }
                           §§goto(addr0097);
                        }
                     }
                     addr0086:
                     §§goto(addr006e);
                  }
                  §§goto(addr0064);
               }
               §§goto(addr0085);
            }
            addr006e:
            §§push(this._blueprintVo.configObj == null);
            if(!_loc3_)
            {
               addr0085:
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(_loc2_ || _loc3_)
               {
                  addr0097:
                  dispatchEvent(new UIInfolayerDispatcherEvent(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,UIInfolayerDispatcherEvent.CALLER_TYPE_PFI,this._blueprintVo.configObj.id));
               }
            }
            §§goto(addr00b8);
         }
         addr00b8:
      }
      
      private function rollOutHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            §§push(this._blueprintVo);
            if(!(_loc3_ && Boolean(param1)))
            {
               §§push(§§pop() == null);
               if(_loc2_ || Boolean(param1))
               {
                  §§push(!§§pop());
                  if(_loc2_)
                  {
                     var _temp_4:* = §§pop();
                     §§push(_temp_4);
                     if(_temp_4)
                     {
                        if(_loc2_ || Boolean(param1))
                        {
                           §§goto(addr0065);
                        }
                        §§goto(addr008c);
                     }
                     §§goto(addr008d);
                  }
               }
               addr0065:
               §§pop();
               if(!(_loc3_ && _loc2_))
               {
                  addr008d:
                  addr0082:
                  §§push(this._blueprintVo.configObj == null);
                  if(_loc2_)
                  {
                     addr008c:
                     §§push(!§§pop());
                  }
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        addr0096:
                        dispatchEvent(new UIInfolayerDispatcherEvent(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,"",this._blueprintVo.configObj.id));
                     }
                  }
               }
               return;
            }
            §§goto(addr0082);
         }
         §§goto(addr0096);
      }
      
      public function updateVisibilityNewIconInGridItemComponent(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this.content.showNewIcon = param1;
         }
      }
      
      private function _ArchitectItemRenderer_GridItemComponent1_i() : GridItemComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:GridItemComponent = new GridItemComponent();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.id = "content";
                  if(_loc2_)
                  {
                     addr005f:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              §§goto(addr0088);
                           }
                        }
                        §§goto(addr0092);
                     }
                  }
                  §§goto(addr0088);
               }
               §§goto(addr005f);
            }
            addr0088:
            this.content = _loc1_;
            if(!_loc3_)
            {
               addr0092:
               BindingManager.executeBindings(this,"content",this.content);
            }
            §§goto(addr009f);
         }
         addr009f:
         return _loc1_;
      }
      
      public function ___ArchitectItemRenderer_ItemRenderer1_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this.clickHandler(param1);
         }
      }
      
      public function ___ArchitectItemRenderer_ItemRenderer1_rollOut(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.rollOutHandler(param1);
         }
      }
      
      public function ___ArchitectItemRenderer_ItemRenderer1_rollOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.rollOverHandler(param1);
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
               if(_loc3_ || Boolean(this))
               {
                  this._951530617content = param1;
                  addr0040:
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr0061:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"content",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0061);
            }
            addr007f:
            return;
         }
         §§goto(addr0040);
      }
   }
}

