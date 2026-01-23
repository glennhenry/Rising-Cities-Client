package net.bigpoint.cityrama.view.residentialBook.ui.components
{
   import flash.events.Event;
   import mx.binding.BindingManager;
   import mx.collections.IList;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.common.components.StandardInventoryList;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.ImprovementInventoryItemRenderer;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.events.ImprovementInventoryItemRendererEvent;
   import net.bigpoint.cityrama.view.residentialBook.ui.skins.ImprovementInventoryLayerSkin;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.events.IndexChangeEvent;
   
   public class ImprovementInventoryLayerComponent extends Group
   {
      
      public static const DESELECT_ALL:String = "DESELECT_ALL";
      
      public static const ITEM_SELECTED:String = "ITEM_SELECTED";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc1_))
      {
         DESELECT_ALL = "DESELECT_ALL";
         if(_loc2_)
         {
            ITEM_SELECTED = "ITEM_SELECTED";
         }
      }
      
      private var _1808398663improvementItemList:StandardInventoryList;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:IList;
      
      private var _isDirty:Boolean;
      
      public function ImprovementInventoryLayerComponent()
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
               if(_loc1_)
               {
                  this.percentWidth = 100;
                  if(!_loc2_)
                  {
                     this.percentHeight = 100;
                     if(!_loc2_)
                     {
                        §§goto(addr005f);
                     }
                     §§goto(addr0077);
                  }
                  addr005f:
                  this.mxmlContent = [this._ImprovementInventoryLayerComponent_StandardInventoryList1_i()];
                  if(_loc1_ || Boolean(this))
                  {
                     addr0077:
                     this.addEventListener("creationComplete",this.___ImprovementInventoryLayerComponent_Group1_creationComplete);
                  }
                  §§goto(addr0083);
               }
               §§goto(addr0077);
            }
            addr0083:
            return;
         }
         §§goto(addr005f);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || _loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || Boolean(this))
                  {
                     return;
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
         }
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.initialize();
         }
      }
      
      private function handleCreationComplete() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            §§push(this.improvementItemList);
            if(_loc1_ || _loc1_)
            {
               §§pop().addEventListener(IndexChangeEvent.CHANGE,this.handleInventoryIndexChanged);
               if(_loc1_)
               {
                  addr004f:
                  this.improvementItemList.addEventListener(ImprovementInventoryItemRendererEvent.SELECTION_CHANGED,this.handleItemSelected);
                  addr004b:
               }
               return;
            }
            §§goto(addr004f);
         }
         §§goto(addr004b);
      }
      
      private function handleItemSelected(param1:ImprovementInventoryItemRendererEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            dispatchEvent(new Event(ITEM_SELECTED,true));
         }
      }
      
      private function handleInventoryIndexChanged(param1:IndexChangeEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            if(param1.newIndex == -1)
            {
               if(_loc3_ || Boolean(this))
               {
                  dispatchEvent(new Event(DESELECT_ALL,true));
               }
            }
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super.commitProperties();
            if(_loc1_ || Boolean(this))
            {
               §§push(Boolean(this._data));
               if(!_loc2_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(_temp_3)
                  {
                     if(!_loc2_)
                     {
                        addr004d:
                        §§pop();
                        if(!_loc2_)
                        {
                           §§goto(addr0067);
                        }
                        §§goto(addr0078);
                     }
                  }
                  addr0067:
                  §§push(this._isDirty);
                  if(!_loc2_)
                  {
                     §§push(§§pop());
                  }
                  if(§§pop())
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        addr0078:
                        this._isDirty = false;
                        if(_loc1_)
                        {
                           addr0082:
                           this.improvementItemList.dataProvider = this._data;
                        }
                     }
                  }
                  return;
               }
               §§goto(addr004d);
            }
            §§goto(addr0082);
         }
         §§goto(addr0078);
      }
      
      public function set data(param1:IList) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(!_loc3_)
               {
                  this._data = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr0049:
                     this._isDirty = true;
                     if(!(_loc3_ && Boolean(param1)))
                     {
                        addr005b:
                        invalidateProperties();
                     }
                     §§goto(addr0060);
                  }
                  §§goto(addr005b);
               }
            }
            addr0060:
            return;
         }
         §§goto(addr0049);
      }
      
      private function _ImprovementInventoryLayerComponent_StandardInventoryList1_i() : StandardInventoryList
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StandardInventoryList = new StandardInventoryList();
         if(!_loc2_)
         {
            _loc1_.itemRenderer = this._ImprovementInventoryLayerComponent_ClassFactory1_c();
            if(!_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(_loc3_)
               {
                  _loc1_.percentHeight = 100;
                  if(_loc3_)
                  {
                     _loc1_.setStyle("skinClass",ImprovementInventoryLayerSkin);
                     if(_loc3_)
                     {
                        _loc1_.id = "improvementItemList";
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr007e:
                                 _loc1_.document = this;
                                 if(_loc3_ || _loc2_)
                                 {
                                    §§goto(addr009c);
                                 }
                                 §§goto(addr00ae);
                              }
                           }
                        }
                        §§goto(addr009c);
                     }
                     §§goto(addr007e);
                  }
                  addr009c:
                  this.improvementItemList = _loc1_;
                  if(_loc3_ || _loc3_)
                  {
                     addr00ae:
                     BindingManager.executeBindings(this,"improvementItemList",this.improvementItemList);
                  }
                  §§goto(addr00bb);
               }
            }
            addr00bb:
            return _loc1_;
         }
         §§goto(addr007e);
      }
      
      private function _ImprovementInventoryLayerComponent_ClassFactory1_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(_loc3_ || _loc2_)
         {
            _loc1_.generator = ImprovementInventoryItemRenderer;
         }
         return _loc1_;
      }
      
      public function ___ImprovementInventoryLayerComponent_Group1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.handleCreationComplete();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get improvementItemList() : StandardInventoryList
      {
         return this._1808398663improvementItemList;
      }
      
      public function set improvementItemList(param1:StandardInventoryList) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1808398663improvementItemList;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1808398663improvementItemList = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improvementItemList",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr006d);
               }
            }
         }
         addr007c:
      }
   }
}

