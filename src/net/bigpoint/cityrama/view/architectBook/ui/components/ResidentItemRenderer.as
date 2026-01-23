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
   
   public class ResidentItemRenderer extends ItemRenderer implements IStateClient2
   {
      
      private var _816216256visual:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:BlueprintImageVO;
      
      private var _dataIsDirty:Boolean;
      
      public function ResidentItemRenderer()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(!_loc1_)
            {
               mx_internal::_document = this;
               if(_loc2_ || _loc1_)
               {
                  addr0038:
                  this.autoDrawBackground = false;
                  if(!_loc1_)
                  {
                     this.mxmlContent = [this._ResidentItemRenderer_Group1_c()];
                     if(!(_loc1_ && Boolean(this)))
                     {
                        this.currentState = "normal";
                        if(_loc2_)
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
                           addr0070:
                        }
                     }
                     §§goto(addr00b3);
                  }
                  §§goto(addr0070);
               }
               addr00b3:
               return;
            }
            §§goto(addr0070);
         }
         §§goto(addr0038);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc2_)
                  {
                     return;
                  }
               }
               else
               {
                  addr0043:
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         §§goto(addr0043);
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
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.data = param1;
            if(_loc3_ || _loc2_)
            {
               §§goto(addr0035);
            }
            §§goto(addr007c);
         }
         addr0035:
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            if(!_loc2_)
            {
               this._data = param1 as BlueprintImageVO;
               if(_loc3_ || _loc3_)
               {
                  §§goto(addr006a);
               }
               §§goto(addr007c);
            }
            addr006a:
            this._dataIsDirty = true;
            if(_loc3_ || Boolean(this))
            {
               addr007c:
               invalidateProperties();
            }
            §§goto(addr0081);
         }
         addr0081:
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.commitProperties();
            if(!(_loc2_ && Boolean(this)))
            {
               if(this._dataIsDirty)
               {
                  if(!_loc2_)
                  {
                     this._dataIsDirty = false;
                     if(_loc1_ || _loc1_)
                     {
                        §§push(this.visual);
                        if(!(_loc2_ && _loc1_))
                        {
                           §§push(this._data);
                           if(!_loc2_)
                           {
                              §§push(§§pop().visualLibName);
                              if(_loc1_ || _loc2_)
                              {
                                 §§pop().dynaLibName = §§pop();
                                 if(!_loc2_)
                                 {
                                    addr0081:
                                    §§push(this.visual);
                                    if(!_loc2_)
                                    {
                                       §§push(this._data);
                                       if(_loc1_)
                                       {
                                          §§push(§§pop().visualName);
                                          if(!_loc2_)
                                          {
                                             addr00a5:
                                             §§pop().dynaBmpSourceName = §§pop();
                                             if(_loc1_ || Boolean(this))
                                             {
                                                addr00be:
                                                this.visual.toolTip = this._data.toolTip;
                                                addr00bc:
                                                addr00b8:
                                                addr00b4:
                                             }
                                             §§goto(addr00c0);
                                          }
                                          §§goto(addr00be);
                                       }
                                       §§goto(addr00bc);
                                    }
                                    §§goto(addr00b8);
                                 }
                                 §§goto(addr00c0);
                              }
                              §§goto(addr00a5);
                           }
                           §§goto(addr00bc);
                        }
                        §§goto(addr00b8);
                     }
                     §§goto(addr0081);
                  }
                  §§goto(addr00b4);
               }
               addr00c0:
               return;
            }
            §§goto(addr0081);
         }
         §§goto(addr00b4);
      }
      
      private function _ResidentItemRenderer_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.width = 40;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.height = 40;
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._ResidentItemRenderer_BriskImageDynaLib1_i()];
                  if(_loc3_)
                  {
                     §§goto(addr0066);
                  }
               }
               §§goto(addr0072);
            }
            addr0066:
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr0072:
                  _loc1_.document = this;
               }
            }
            §§goto(addr0076);
         }
         addr0076:
         return _loc1_;
      }
      
      private function _ResidentItemRenderer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.verticalCenter = 0;
            if(!_loc3_)
            {
               §§goto(addr002b);
            }
            §§goto(addr0064);
         }
         addr002b:
         _loc1_.horizontalCenter = 0;
         if(!_loc3_)
         {
            _loc1_.id = "visual";
            if(_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr0064:
                     _loc1_.document = this;
                     if(_loc2_)
                     {
                        §§goto(addr006d);
                     }
                  }
                  §§goto(addr007f);
               }
            }
            addr006d:
            this.visual = _loc1_;
            if(_loc2_ || Boolean(_loc1_))
            {
               addr007f:
               BindingManager.executeBindings(this,"visual",this.visual);
            }
            §§goto(addr008c);
         }
         addr008c:
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get visual() : BriskImageDynaLib
      {
         return this._816216256visual;
      }
      
      public function set visual(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._816216256visual;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  addr0039:
                  this._816216256visual = param1;
                  if(_loc4_ || _loc3_)
                  {
                     §§goto(addr0058);
                  }
                  §§goto(addr0070);
               }
               addr0058:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr0070:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"visual",_loc2_,param1));
                  }
               }
               §§goto(addr007f);
            }
            addr007f:
            return;
         }
         §§goto(addr0039);
      }
   }
}

