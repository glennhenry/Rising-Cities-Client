package net.bigpoint.cityrama.view.residentSelection.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.residentSelection.vo.ResidentDetailVo;
   import spark.components.supportClasses.ItemRenderer;
   
   public class ResidentChoiceItemRenderer extends ItemRenderer
   {
      
      private var _951530617content:ResidentChoiceDetailComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _residentData:ResidentDetailVo;
      
      private var _isDirty:Boolean;
      
      public function ResidentChoiceItemRenderer()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               mx_internal::_document = this;
               addr001e:
               if(!_loc1_)
               {
                  this.autoDrawBackground = false;
                  if(_loc2_)
                  {
                     this.width = 222;
                     if(!(_loc1_ && _loc2_))
                     {
                        addr0061:
                        this.height = 320;
                        if(_loc2_ || Boolean(this))
                        {
                           this.mxmlContent = [this._ResidentChoiceItemRenderer_ResidentChoiceDetailComponent1_i()];
                        }
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr0061);
               }
            }
            addr007f:
            return;
         }
         §§goto(addr001e);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc3_ || Boolean(param1))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     return;
                  }
               }
               else
               {
                  addr0051:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
         }
         §§goto(addr0051);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super.initialize();
         }
      }
      
      override public function set data(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(param1 is ResidentDetailVo)
            {
               if(_loc2_ || Boolean(this))
               {
                  if(param1 != this._residentData)
                  {
                     if(!_loc3_)
                     {
                        super.data = param1;
                        if(_loc2_)
                        {
                           this._residentData = param1 as ResidentDetailVo;
                           if(_loc2_ || _loc2_)
                           {
                              addr0076:
                              this._isDirty = true;
                              if(!(_loc3_ && Boolean(param1)))
                              {
                                 addr0088:
                                 invalidateProperties();
                              }
                           }
                        }
                        §§goto(addr008d);
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr008d);
               }
               §§goto(addr0076);
            }
         }
         addr008d:
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.commitProperties();
            if(_loc1_ || Boolean(this))
            {
               §§push(Boolean(this._residentData));
               if(_loc1_ || _loc2_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(_temp_3)
                  {
                     if(_loc1_)
                     {
                        §§pop();
                        if(_loc1_ || Boolean(this))
                        {
                           §§goto(addr0077);
                        }
                        §§goto(addr008a);
                     }
                  }
                  addr0077:
                  §§push(this._isDirty);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0076:
                     §§push(§§pop());
                  }
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        this._isDirty = false;
                        if(_loc1_)
                        {
                           addr008a:
                           this.content.data = this._residentData;
                        }
                        §§goto(addr0094);
                     }
                     §§goto(addr008a);
                  }
                  §§goto(addr0094);
               }
               §§goto(addr0076);
            }
         }
         addr0094:
      }
      
      private function _ResidentChoiceItemRenderer_ResidentChoiceDetailComponent1_i() : ResidentChoiceDetailComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ResidentChoiceDetailComponent = new ResidentChoiceDetailComponent();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.width = 222;
            if(_loc3_)
            {
               addr0036:
               _loc1_.height = 320;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.id = "content";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              addr0089:
                              this.content = _loc1_;
                              if(_loc3_)
                              {
                                 addr0093:
                                 BindingManager.executeBindings(this,"content",this.content);
                              }
                           }
                           return _loc1_;
                        }
                        §§goto(addr0093);
                     }
                     §§goto(addr0089);
                  }
                  §§goto(addr0093);
               }
            }
            §§goto(addr0089);
         }
         §§goto(addr0036);
      }
      
      [Bindable(event="propertyChange")]
      public function get content() : ResidentChoiceDetailComponent
      {
         return this._951530617content;
      }
      
      public function set content(param1:ResidentChoiceDetailComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._951530617content;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._951530617content = param1;
                  if(_loc4_)
                  {
                     §§goto(addr0058);
                  }
                  §§goto(addr0068);
               }
               addr0058:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr0068:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"content",_loc2_,param1));
                  }
               }
               §§goto(addr0077);
            }
            addr0077:
            return;
         }
         §§goto(addr0058);
      }
   }
}

