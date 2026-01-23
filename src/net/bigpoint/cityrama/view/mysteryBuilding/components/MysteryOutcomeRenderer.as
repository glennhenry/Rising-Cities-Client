package net.bigpoint.cityrama.view.mysteryBuilding.components
{
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.constants.ServerConfigElementCategory;
   import net.bigpoint.cityrama.model.architecturalBook.ArchitecturalBookProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import spark.components.supportClasses.ItemRenderer;
   
   public class MysteryOutcomeRenderer extends ItemRenderer implements IStateClient2
   {
      
      private var _1332194002background:BriskImageDynaLib;
      
      private var _989375879playfieldItem:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ConfigPlayfieldItemDTO;
      
      private var _isDirty:Boolean;
      
      public function MysteryOutcomeRenderer()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super();
            if(!_loc2_)
            {
               mx_internal::_document = this;
               if(!(_loc2_ && _loc1_))
               {
                  this.autoDrawBackground = false;
                  if(_loc1_)
                  {
                     this.height = 118;
                     if(!(_loc2_ && _loc1_))
                     {
                        this.width = 118;
                        if(!_loc2_)
                        {
                           addr006f:
                           this.mxmlContent = [this._MysteryOutcomeRenderer_BriskImageDynaLib1_i(),this._MysteryOutcomeRenderer_BriskImageDynaLib2_i()];
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr008d:
                              this.currentState = "normal";
                              if(!_loc2_)
                              {
                                 this.addEventListener("rollOver",this.___MysteryOutcomeRenderer_ItemRenderer1_rollOver);
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    addr00b2:
                                    this.addEventListener("rollOut",this.___MysteryOutcomeRenderer_ItemRenderer1_rollOut);
                                    if(!_loc2_)
                                    {
                                       states = [new State({
                                          "name":"normal",
                                          "overrides":[]
                                       }),new State({
                                          "name":"hovered",
                                          "overrides":[]
                                       }),new State({
                                          "name":"selected",
                                          "overrides":[]
                                       })];
                                       addr00c3:
                                    }
                                 }
                                 return;
                              }
                              §§goto(addr00b2);
                           }
                        }
                        §§goto(addr00c3);
                     }
                  }
                  §§goto(addr00b2);
               }
               §§goto(addr008d);
            }
            §§goto(addr00c3);
         }
         §§goto(addr006f);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(!_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     §§goto(addr002c);
                  }
               }
               this.__moduleFactoryInitialized = true;
               §§goto(addr0038);
            }
            addr002c:
            return;
         }
         addr0038:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super.initialize();
         }
      }
      
      override public function set data(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.data = param1;
            if(!_loc2_)
            {
               if(param1 is ConfigPlayfieldItemDTO)
               {
                  if(!_loc2_)
                  {
                     this._data = ConfigPlayfieldItemDTO(param1);
                     addr0038:
                     if(!(_loc2_ && _loc2_))
                     {
                        this._isDirty = true;
                        if(!(_loc2_ && _loc2_))
                        {
                           addr0070:
                           invalidateProperties();
                        }
                        §§goto(addr0075);
                     }
                  }
                  §§goto(addr0070);
               }
               addr0075:
               return;
            }
            §§goto(addr0070);
         }
         §§goto(addr0038);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskDynaVo = null;
         if(_loc3_)
         {
            super.commitProperties();
            if(!_loc2_)
            {
               §§push(this._isDirty);
               if(!_loc2_)
               {
                  §§push(§§pop());
                  if(_loc3_)
                  {
                     var _temp_2:* = §§pop();
                     §§push(_temp_2);
                     if(_temp_2)
                     {
                        if(_loc3_)
                        {
                           addr0043:
                           §§pop();
                           if(!_loc2_)
                           {
                              addr0049:
                              §§push(this._data);
                              if(!_loc2_)
                              {
                                 §§push(§§pop());
                                 if(!_loc2_)
                                 {
                                    §§goto(addr0058);
                                 }
                                 §§goto(addr00d2);
                              }
                              §§goto(addr00cf);
                           }
                           §§goto(addr0086);
                        }
                        §§goto(addr00d2);
                     }
                     addr0058:
                     if(§§pop())
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0069:
                           this._isDirty = false;
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr0086:
                              §§push(this.playfieldItem);
                              §§push(§§findproperty(BriskDynaVo));
                              §§push(ArchitecturalBookProxy.getItemIconLibByConfigPlayfieldItemDTO(this._data));
                              §§push("FieldItem_");
                              if(_loc3_ || _loc2_)
                              {
                                 §§push(§§pop() + this._data.gfxId);
                                 if(!_loc2_)
                                 {
                                    addr00b4:
                                    §§push(§§pop() + "_small");
                                 }
                                 §§pop().briskDynaVo = new §§pop().BriskDynaVo(§§pop(),§§pop());
                                 if(_loc3_ || Boolean(this))
                                 {
                                    addr00cb:
                                    addr00d2:
                                    addr00cf:
                                    if(this._data.specialHighlighting)
                                    {
                                       _loc1_ = new BriskDynaVo("gui_popups_paperPopup","architect_goldprint_small");
                                       §§goto(addr00d6);
                                    }
                                    else
                                    {
                                       _loc1_ = new BriskDynaVo("gui_popups_paperPopup","architect_blueprint1_small");
                                    }
                                    §§goto(addr010f);
                                 }
                                 §§goto(addr00d6);
                              }
                              §§goto(addr00b4);
                           }
                           addr00d6:
                           if(!(_loc2_ && _loc2_))
                           {
                              addr010f:
                              this.background.briskDynaVo = _loc1_;
                           }
                           §§goto(addr0117);
                        }
                        §§goto(addr00cb);
                     }
                     addr0117:
                     return;
                  }
               }
               §§goto(addr0043);
            }
            §§goto(addr0069);
         }
         §§goto(addr0049);
      }
      
      private function rollOverHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            if(this._data)
            {
               if(!(_loc2_ && _loc3_))
               {
                  dispatchEvent(new UIInfolayerDispatcherEvent(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,ServerConfigElementCategory.PLAYFIELD_ITEM_PERMISSION,this._data.id));
               }
            }
         }
      }
      
      private function rollOutHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            dispatchEvent(new UIInfolayerDispatcherEvent(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER));
         }
      }
      
      private function _MysteryOutcomeRenderer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.width = 118;
            if(!_loc3_)
            {
               addr0044:
               _loc1_.height = 118;
               if(!_loc3_)
               {
                  addr004e:
                  _loc1_.id = "background";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr0071:
                           _loc1_.document = this;
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              addr0082:
                              this.background = _loc1_;
                              if(!_loc3_)
                              {
                                 BindingManager.executeBindings(this,"background",this.background);
                              }
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr0082);
                  }
                  §§goto(addr0071);
               }
               §§goto(addr0082);
            }
            §§goto(addr004e);
         }
         §§goto(addr0044);
      }
      
      private function _MysteryOutcomeRenderer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.verticalCenter = 0;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.horizontalCenter = 0;
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0050:
                  _loc1_.id = "playfieldItem";
                  if(_loc2_ || Boolean(this))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr0081:
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr008a:
                              this.playfieldItem = _loc1_;
                              if(!(_loc3_ && _loc2_))
                              {
                                 BindingManager.executeBindings(this,"playfieldItem",this.playfieldItem);
                              }
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr008a);
                  }
               }
            }
            §§goto(addr0081);
         }
         §§goto(addr0050);
      }
      
      public function ___MysteryOutcomeRenderer_ItemRenderer1_rollOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.rollOverHandler(param1);
         }
      }
      
      public function ___MysteryOutcomeRenderer_ItemRenderer1_rollOut(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.rollOutHandler(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get background() : BriskImageDynaLib
      {
         return this._1332194002background;
      }
      
      public function set background(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1332194002background;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1332194002background = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"background",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr005f);
            }
            addr0085:
            return;
         }
         §§goto(addr005f);
      }
      
      [Bindable(event="propertyChange")]
      public function get playfieldItem() : BriskImageDynaLib
      {
         return this._989375879playfieldItem;
      }
      
      public function set playfieldItem(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._989375879playfieldItem;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._989375879playfieldItem = param1;
                  if(!_loc4_)
                  {
                     addr0051:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"playfieldItem",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0078);
               }
               §§goto(addr0051);
            }
            addr0078:
            return;
         }
         §§goto(addr0051);
      }
   }
}

