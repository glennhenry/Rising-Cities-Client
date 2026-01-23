package net.bigpoint.cityrama.view.architectBook.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.model.architecturalBook.vo.BlueprintImageVO;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.supportClasses.ItemRenderer;
   
   public class ArchitectNeedItemRenderer extends ItemRenderer implements IStateClient2
   {
      
      private var _816216256visual:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:BlueprintImageVO;
      
      private var _dataIsDirty:Boolean;
      
      public function ArchitectNeedItemRenderer()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super();
            if(_loc1_ || _loc2_)
            {
               mx_internal::_document = this;
               if(!_loc2_)
               {
                  this.autoDrawBackground = false;
                  if(_loc1_)
                  {
                     addr0053:
                     this.mxmlContent = [this._ArchitectNeedItemRenderer_Group1_c()];
                     if(_loc1_)
                     {
                        §§goto(addr0063);
                     }
                     §§goto(addr0077);
                  }
                  §§goto(addr0063);
               }
               §§goto(addr0077);
            }
            §§goto(addr0053);
         }
         addr0063:
         this.currentState = "normal";
         if(_loc1_ || Boolean(this))
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
            addr0077:
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            super.moduleFactory = param1;
            if(!(_loc2_ && Boolean(this)))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     §§goto(addr004d);
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
            return;
         }
         addr004d:
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
      
      override public function set data(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.data = param1;
            if(!(_loc3_ && Boolean(this)))
            {
               if(!RandomUtilities.isEqual(param1,this._data))
               {
                  if(_loc2_ || _loc2_)
                  {
                     this._data = param1 as BlueprintImageVO;
                     if(!_loc3_)
                     {
                        this._dataIsDirty = true;
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr0078:
                           invalidateProperties();
                        }
                        §§goto(addr007d);
                     }
                     §§goto(addr0078);
                  }
               }
            }
         }
         addr007d:
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super.commitProperties();
            if(!_loc2_)
            {
               if(this._dataIsDirty)
               {
                  if(_loc1_)
                  {
                     addr0034:
                     this._dataIsDirty = false;
                     if(_loc1_ || _loc2_)
                     {
                        addr0046:
                        §§push(this.visual);
                        if(_loc1_ || _loc1_)
                        {
                           §§push(this._data);
                           if(_loc1_)
                           {
                              §§push(§§pop().visualLibName);
                              if(!_loc2_)
                              {
                                 §§pop().dynaLibName = §§pop();
                                 if(_loc1_ || _loc1_)
                                 {
                                    §§push(this.visual);
                                    if(_loc1_)
                                    {
                                       addr0094:
                                       §§push(this._data);
                                       if(_loc1_ || _loc1_)
                                       {
                                          addr00a5:
                                          §§push(§§pop().visualName);
                                          if(_loc1_)
                                          {
                                             §§goto(addr00ad);
                                          }
                                          §§goto(addr00be);
                                       }
                                       §§goto(addr00bc);
                                    }
                                    §§goto(addr00b8);
                                 }
                                 §§goto(addr00b4);
                              }
                              addr00ad:
                              §§pop().dynaBmpSourceName = §§pop();
                              if(!_loc2_)
                              {
                                 addr00be:
                                 this.visual.toolTip = this._data.toolTip;
                                 addr00bc:
                                 addr00b8:
                                 addr00b4:
                              }
                              §§goto(addr00c0);
                           }
                           §§goto(addr00a5);
                        }
                        §§goto(addr0094);
                     }
                     §§goto(addr00c0);
                  }
                  §§goto(addr0046);
               }
               addr00c0:
               return;
            }
            §§goto(addr0046);
         }
         §§goto(addr0034);
      }
      
      private function _ArchitectNeedItemRenderer_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.width = 50;
            if(!(_loc2_ && _loc3_))
            {
               addr003b:
               _loc1_.height = 40;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.mxmlContent = [this._ArchitectNeedItemRenderer_BriskImageDynaLib1_i()];
                  if(_loc3_ || _loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           addr0085:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0089);
                  }
                  §§goto(addr0085);
               }
            }
            addr0089:
            return _loc1_;
         }
         §§goto(addr003b);
      }
      
      private function _ArchitectNeedItemRenderer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.bottom = 0;
            if(_loc2_ || _loc3_)
            {
               _loc1_.horizontalCenter = 0;
               if(!(_loc3_ && _loc3_))
               {
                  addr0054:
                  _loc1_.id = "visual";
                  if(!_loc3_)
                  {
                     addr005f:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           _loc1_.document = this;
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              §§goto(addr0088);
                           }
                           §§goto(addr0092);
                        }
                     }
                     addr0088:
                     this.visual = _loc1_;
                     if(!_loc3_)
                     {
                        addr0092:
                        BindingManager.executeBindings(this,"visual",this.visual);
                     }
                     §§goto(addr009f);
                  }
                  §§goto(addr0092);
               }
               addr009f:
               return _loc1_;
            }
            §§goto(addr0054);
         }
         §§goto(addr005f);
      }
      
      [Bindable(event="propertyChange")]
      public function get visual() : BriskImageDynaLib
      {
         return this._816216256visual;
      }
      
      public function set visual(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._816216256visual;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._816216256visual = param1;
                  if(!_loc4_)
                  {
                     addr0060:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"visual",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr0060);
            }
            addr0086:
            return;
         }
         §§goto(addr0077);
      }
   }
}

