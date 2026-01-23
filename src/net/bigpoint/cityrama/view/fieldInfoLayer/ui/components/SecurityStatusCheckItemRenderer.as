package net.bigpoint.cityrama.view.fieldInfoLayer.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.SecurityStatusComponentVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class SecurityStatusCheckItemRenderer extends ItemRenderer
   {
      
      private var _93494179badge:BriskImageDynaLib;
      
      private var _3016401base:BriskImageDynaLib;
      
      private var _94627080check:BriskImageDynaLib;
      
      private var _1674318617divider:BriskImageDynaLib;
      
      private var _722296940securityLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:SecurityStatusComponentVo;
      
      private var _isDirty:Boolean;
      
      private var _labelText:String;
      
      public function SecurityStatusCheckItemRenderer()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
            if(!(_loc2_ && _loc2_))
            {
               mx_internal::_document = this;
               if(_loc1_)
               {
                  addr0049:
                  this.mxmlContent = [this._SecurityStatusCheckItemRenderer_HGroup1_c()];
               }
               §§goto(addr0054);
            }
            §§goto(addr0049);
         }
         addr0054:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            super.moduleFactory = param1;
            if(_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     §§goto(addr0041);
                  }
               }
               this.__moduleFactoryInitialized = true;
               return;
            }
         }
         addr0041:
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
         if(!_loc2_)
         {
            §§push(param1 is SecurityStatusComponentVo);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr0044:
                     if(!RandomUtilities.isEqual(param1,this._data))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           this._data = param1 as SecurityStatusComponentVo;
                           if(!(_loc2_ && _loc2_))
                           {
                              §§goto(addr0077);
                           }
                           §§goto(addr0081);
                        }
                        addr0077:
                        this._isDirty = true;
                        if(_loc3_)
                        {
                           addr0081:
                           invalidateProperties();
                        }
                        §§goto(addr0086);
                     }
                  }
               }
               §§goto(addr0086);
            }
            §§goto(addr0044);
         }
         addr0086:
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc1_))
         {
            super.commitProperties();
            if(!_loc2_)
            {
               §§push(this._data);
               if(!_loc2_)
               {
                  §§push(§§pop());
                  if(!_loc2_)
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     §§push(_temp_3);
                     if(!_loc2_)
                     {
                        if(§§pop())
                        {
                           if(!_loc2_)
                           {
                              §§pop();
                              if(_loc3_ || _loc3_)
                              {
                                 §§push(this._isDirty);
                                 if(_loc3_ || _loc1_)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       §§goto(addr0075);
                                    }
                                    §§goto(addr01b9);
                                 }
                                 §§goto(addr01e2);
                              }
                              §§goto(addr0287);
                           }
                           §§goto(addr01c3);
                        }
                        addr0075:
                        if(§§pop())
                        {
                           if(_loc3_)
                           {
                              this._isDirty = false;
                              if(_loc3_)
                              {
                                 §§push(this.check);
                                 if(_loc3_ || _loc2_)
                                 {
                                    §§push(this.check);
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       §§push(false);
                                       if(_loc3_ || _loc2_)
                                       {
                                          var _temp_10:* = §§pop();
                                          §§push(_temp_10);
                                          §§push(_temp_10);
                                          if(_loc3_ || _loc1_)
                                          {
                                             var _loc1_:* = §§pop();
                                             if(_loc3_ || Boolean(this))
                                             {
                                                §§pop().visible = §§pop();
                                                if(_loc3_)
                                                {
                                                   §§push(_loc1_);
                                                   if(!_loc2_)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         §§pop().includeInLayout = §§pop();
                                                         if(!(_loc2_ && _loc1_))
                                                         {
                                                            §§push(this.base);
                                                            if(_loc3_ || Boolean(this))
                                                            {
                                                               §§push("gui_popups_emergencyBook");
                                                               if(_loc3_ || _loc2_)
                                                               {
                                                                  §§pop().dynaLibName = §§pop();
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§push(this._data);
                                                                     if(!_loc2_)
                                                                     {
                                                                        §§push(§§pop().showChecks);
                                                                        if(_loc3_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(!_loc2_)
                                                                              {
                                                                                 addr013a:
                                                                                 §§push(this);
                                                                                 §§push(this._data.actualGrade + " / ");
                                                                                 if(!(_loc2_ && _loc3_))
                                                                                 {
                                                                                    §§push(§§pop() + this._data.requiredGrade);
                                                                                 }
                                                                                 §§pop()._labelText = §§pop();
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    addr0163:
                                                                                    §§push(this.check);
                                                                                    if(!(_loc2_ && _loc2_))
                                                                                    {
                                                                                       addr0174:
                                                                                       §§push("gui_infield_gui_infolayer");
                                                                                       if(_loc3_ || _loc3_)
                                                                                       {
                                                                                          §§pop().dynaLibName = §§pop();
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             addr018b:
                                                                                             §§push(this._data);
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                addr0194:
                                                                                                §§push(§§pop().requiredGrade);
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   §§push(0);
                                                                                                   if(!(_loc2_ && _loc1_))
                                                                                                   {
                                                                                                      §§push(§§pop() > §§pop());
                                                                                                      if(_loc3_ || _loc1_)
                                                                                                      {
                                                                                                         addr01b9:
                                                                                                         var _temp_21:* = §§pop();
                                                                                                         addr01ba:
                                                                                                         §§push(_temp_21);
                                                                                                         if(_temp_21)
                                                                                                         {
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               addr01c3:
                                                                                                               §§pop();
                                                                                                               if(!_loc2_)
                                                                                                               {
                                                                                                                  §§push(this._data);
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     addr01d2:
                                                                                                                     §§push(§§pop().requiredGrade);
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        addr01e2:
                                                                                                                        if(§§pop() <= this._data.actualGrade)
                                                                                                                        {
                                                                                                                           if(!_loc2_)
                                                                                                                           {
                                                                                                                              §§push(this.check);
                                                                                                                              if(!(_loc2_ && _loc1_))
                                                                                                                              {
                                                                                                                                 addr01fc:
                                                                                                                                 §§push("checkmark_green_small");
                                                                                                                                 if(_loc3_)
                                                                                                                                 {
                                                                                                                                    §§pop().dynaBmpSourceName = §§pop();
                                                                                                                                    if(_loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(this.base);
                                                                                                                                       if(_loc3_ || _loc1_)
                                                                                                                                       {
                                                                                                                                          §§push("batchbase_green");
                                                                                                                                          if(_loc3_)
                                                                                                                                          {
                                                                                                                                             §§pop().dynaBmpSourceName = §§pop();
                                                                                                                                             if(!(_loc2_ && Boolean(this)))
                                                                                                                                             {
                                                                                                                                                addr0233:
                                                                                                                                                §§push(this.securityLabel);
                                                                                                                                                if(_loc3_)
                                                                                                                                                {
                                                                                                                                                   §§push("styleName");
                                                                                                                                                   if(!_loc2_)
                                                                                                                                                   {
                                                                                                                                                      §§push("securityPos");
                                                                                                                                                      if(_loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§pop().setStyle(§§pop(),§§pop());
                                                                                                                                                         if(!(_loc2_ && _loc1_))
                                                                                                                                                         {
                                                                                                                                                            addr02da:
                                                                                                                                                            §§push(this.check);
                                                                                                                                                            this.check.visible = _loc1_ = true;
                                                                                                                                                            addr02df:
                                                                                                                                                            §§pop().includeInLayout = _loc1_;
                                                                                                                                                            addr02dd:
                                                                                                                                                            addr02dc:
                                                                                                                                                            if(!(_loc2_ && _loc1_))
                                                                                                                                                            {
                                                                                                                                                               addr03b1:
                                                                                                                                                               this.securityLabel.text = this._labelText;
                                                                                                                                                               §§goto(addr03ad);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr04d3);
                                                                                                                                                            addr02cf:
                                                                                                                                                            addr02d3:
                                                                                                                                                            addr02d9:
                                                                                                                                                            addr02d8:
                                                                                                                                                            addr02d7:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr03ad);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr03a5:
                                                                                                                                                         §§pop().setStyle(§§pop(),§§pop());
                                                                                                                                                         if(!_loc2_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr03ad);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0470);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr036d:
                                                                                                                                                      §§push("securityPos");
                                                                                                                                                      if(_loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§pop().setStyle(§§pop(),§§pop());
                                                                                                                                                         if(!_loc2_)
                                                                                                                                                         {
                                                                                                                                                            addr03ad:
                                                                                                                                                            if(_loc3_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.badge);
                                                                                                                                                               if(!_loc2_)
                                                                                                                                                               {
                                                                                                                                                                  §§push("gui_infield_gui_infolayer");
                                                                                                                                                                  if(!(_loc2_ && _loc1_))
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().dynaLibName = §§pop();
                                                                                                                                                                     if(!(_loc2_ && _loc1_))
                                                                                                                                                                     {
                                                                                                                                                                        addr03ec:
                                                                                                                                                                        §§push(this._data);
                                                                                                                                                                        if(!_loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().department);
                                                                                                                                                                           if(_loc3_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(ServerTagConstants.FIRE_DEPARTMENT);
                                                                                                                                                                              if(!_loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop() == §§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.badge);
                                                                                                                                                                                       if(!(_loc2_ && _loc1_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push("badge_fire");
                                                                                                                                                                                          if(_loc3_ || Boolean(this))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop().dynaBmpSourceName = §§pop();
                                                                                                                                                                                             if(_loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                             }
                                                                                                                                                                                             addr04d3:
                                                                                                                                                                                             §§push(this.divider);
                                                                                                                                                                                             §§push(this._data.lastInList);
                                                                                                                                                                                             if(!_loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(!§§pop());
                                                                                                                                                                                             }
                                                                                                                                                                                             §§pop().visible = §§pop();
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             addr04cc:
                                                                                                                                                                                             §§pop().dynaBmpSourceName = §§pop();
                                                                                                                                                                                             if(!_loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr04d3);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr04e6);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          addr04c9:
                                                                                                                                                                                          §§push("badge_hospital");
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr04cc);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this._data);
                                                                                                                                                                                    if(!_loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr044d:
                                                                                                                                                                                       §§push(§§pop().department);
                                                                                                                                                                                       if(_loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(ServerTagConstants.POLICE_DEPARTMENT);
                                                                                                                                                                                          if(_loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr045f:
                                                                                                                                                                                             if(§§pop() == §§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc2_ && _loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr0470:
                                                                                                                                                                                                   §§push(this.badge);
                                                                                                                                                                                                   if(_loc3_ || _loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr0481:
                                                                                                                                                                                                      §§push("badge_police");
                                                                                                                                                                                                      if(!(_loc2_ && Boolean(this)))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr0491:
                                                                                                                                                                                                         §§pop().dynaBmpSourceName = §§pop();
                                                                                                                                                                                                         if(_loc2_ && _loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr04c5:
                                                                                                                                                                                                            §§goto(addr04c9);
                                                                                                                                                                                                            §§push(this.badge);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr04d3);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr04cc);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr04c9);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr04e6);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                addr04bc:
                                                                                                                                                                                                addr04b7:
                                                                                                                                                                                                addr04b4:
                                                                                                                                                                                                if(this._data.department == ServerTagConstants.HOSPITAL)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr04c5);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr04d3);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr04bc);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr04b7);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr04b4);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr04d3);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr045f);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr04b7);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr044d);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr04c5);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr0491);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0481);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr04e6);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr03a5);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr0366:
                                                                                                                                                   §§push("styleName");
                                                                                                                                                   if(_loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr036d);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr03a2:
                                                                                                                                                      §§push("securityNeg");
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr03a5);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr0287:
                                                                                                                                                §§push(this.base);
                                                                                                                                                if(!(_loc2_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   §§push("batchbase_red");
                                                                                                                                                   if(!_loc2_)
                                                                                                                                                   {
                                                                                                                                                      addr02a0:
                                                                                                                                                      §§pop().dynaBmpSourceName = §§pop();
                                                                                                                                                      if(_loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.securityLabel);
                                                                                                                                                         if(!(_loc2_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            §§push("styleName");
                                                                                                                                                            if(_loc3_)
                                                                                                                                                            {
                                                                                                                                                               §§push("securityNeg");
                                                                                                                                                               if(_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().setStyle(§§pop(),§§pop());
                                                                                                                                                                  if(_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr02cf);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr04e6);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr03a5);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr036d);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr03a5);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr0366);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr04d3);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr0388:
                                                                                                                                                      §§pop().dynaBmpSourceName = §§pop();
                                                                                                                                                      if(_loc3_ || _loc1_)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.securityLabel);
                                                                                                                                                         if(_loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr03a2);
                                                                                                                                                            §§push("styleName");
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr03b1);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr03ec);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr033e:
                                                                                                                                                   §§push("batchbase_green");
                                                                                                                                                   if(_loc3_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      addr034e:
                                                                                                                                                      §§pop().dynaBmpSourceName = §§pop();
                                                                                                                                                      if(!(_loc2_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         §§push(this.securityLabel);
                                                                                                                                                         if(!_loc2_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr0366);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr03b1);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr04d3);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr0388);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr0388);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr02a0);
                                                                                                                                       }
                                                                                                                                       §§goto(addr033e);
                                                                                                                                    }
                                                                                                                                    §§goto(addr03ad);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr0280:
                                                                                                                                    §§pop().dynaBmpSourceName = §§pop();
                                                                                                                                    if(_loc3_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr0287);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr04d3);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr027d:
                                                                                                                                 §§push("checkmark_grey_small");
                                                                                                                              }
                                                                                                                              §§goto(addr0280);
                                                                                                                           }
                                                                                                                           §§goto(addr0233);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(this.check);
                                                                                                                           if(!(_loc2_ && _loc2_))
                                                                                                                           {
                                                                                                                              §§goto(addr027d);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr02d3);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr0322:
                                                                                                                        addr0324:
                                                                                                                        if(§§pop() > 0)
                                                                                                                        {
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              addr032d:
                                                                                                                              §§push(this.base);
                                                                                                                              if(_loc3_ || _loc3_)
                                                                                                                              {
                                                                                                                                 §§goto(addr033e);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr0385:
                                                                                                                                 §§push("batchbase_red");
                                                                                                                              }
                                                                                                                              §§goto(addr0388);
                                                                                                                           }
                                                                                                                           §§goto(addr03ad);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(this.base);
                                                                                                                        }
                                                                                                                        §§goto(addr0385);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr031f:
                                                                                                                     §§push(§§pop().actualGrade);
                                                                                                                  }
                                                                                                                  §§goto(addr0322);
                                                                                                               }
                                                                                                               §§goto(addr0233);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr01e2);
                                                                                                   }
                                                                                                   §§goto(addr0324);
                                                                                                }
                                                                                                §§goto(addr0322);
                                                                                             }
                                                                                             §§goto(addr01d2);
                                                                                          }
                                                                                          §§goto(addr04d3);
                                                                                       }
                                                                                       §§goto(addr0280);
                                                                                    }
                                                                                    §§goto(addr01fc);
                                                                                 }
                                                                                 §§goto(addr02cf);
                                                                              }
                                                                              §§goto(addr04c5);
                                                                           }
                                                                           else
                                                                           {
                                                                              this._labelText = this._data.actualGrade.toString();
                                                                              if(!(_loc2_ && Boolean(this)))
                                                                              {
                                                                                 §§push(this._data);
                                                                                 if(!(_loc2_ && _loc1_))
                                                                                 {
                                                                                    §§goto(addr031f);
                                                                                 }
                                                                                 §§goto(addr04b4);
                                                                              }
                                                                           }
                                                                           §§goto(addr04d3);
                                                                        }
                                                                        §§goto(addr01c3);
                                                                     }
                                                                     §§goto(addr0194);
                                                                  }
                                                                  §§goto(addr018b);
                                                               }
                                                               §§goto(addr034e);
                                                            }
                                                            §§goto(addr0385);
                                                         }
                                                         §§goto(addr032d);
                                                      }
                                                      §§goto(addr02df);
                                                   }
                                                   §§goto(addr02dd);
                                                }
                                                §§goto(addr02dc);
                                             }
                                             §§goto(addr02da);
                                          }
                                          §§goto(addr02d9);
                                       }
                                       §§goto(addr02d8);
                                    }
                                    §§goto(addr02d7);
                                 }
                                 §§goto(addr0174);
                              }
                              §§goto(addr0163);
                           }
                           §§goto(addr04d3);
                        }
                        addr04e6:
                        return;
                     }
                     §§goto(addr01ba);
                  }
                  §§goto(addr01e2);
               }
               §§goto(addr044d);
            }
            §§goto(addr03ad);
         }
         §§goto(addr013a);
      }
      
      private function _SecurityStatusCheckItemRenderer_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.horizontalAlign = "center";
            if(!(_loc3_ && _loc3_))
            {
               §§goto(addr0048);
            }
            §§goto(addr0090);
         }
         addr0048:
         _loc1_.percentWidth = 100;
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.mxmlContent = [this._SecurityStatusCheckItemRenderer_VGroup1_c(),this._SecurityStatusCheckItemRenderer_BriskImageDynaLib4_i()];
            if(!(_loc3_ && Boolean(this)))
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr0090:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0094);
            }
            §§goto(addr0090);
         }
         addr0094:
         return _loc1_;
      }
      
      private function _SecurityStatusCheckItemRenderer_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_)
         {
            _loc1_.gap = 3;
            if(_loc3_)
            {
               _loc1_.mxmlContent = [this._SecurityStatusCheckItemRenderer_Group1_c(),this._SecurityStatusCheckItemRenderer_Group2_c(),this._SecurityStatusCheckItemRenderer_HGroup2_c()];
               addr0036:
               if(_loc3_ || _loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0036);
      }
      
      private function _SecurityStatusCheckItemRenderer_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.height = 5;
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr0041:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0041);
      }
      
      private function _SecurityStatusCheckItemRenderer_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.mxmlContent = [this._SecurityStatusCheckItemRenderer_BriskImageDynaLib1_i(),this._SecurityStatusCheckItemRenderer_VGroup2_c(),this._SecurityStatusCheckItemRenderer_BriskImageDynaLib3_i()];
            if(!_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _SecurityStatusCheckItemRenderer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "batchbase_green";
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.top = 15;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.id = "base";
                     if(_loc3_ || Boolean(this))
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              _loc1_.document = this;
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 §§goto(addr00a2);
                              }
                           }
                           §§goto(addr00ac);
                        }
                        §§goto(addr00a2);
                     }
                  }
               }
               §§goto(addr00ac);
            }
            addr00a2:
            this.base = _loc1_;
            if(_loc3_)
            {
               addr00ac:
               BindingManager.executeBindings(this,"base",this.base);
            }
            return _loc1_;
         }
         §§goto(addr00ac);
      }
      
      private function _SecurityStatusCheckItemRenderer_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._SecurityStatusCheckItemRenderer_BriskImageDynaLib2_i()];
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr0075:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr0085);
               }
            }
            §§goto(addr0075);
         }
         addr0085:
         return _loc1_;
      }
      
      private function _SecurityStatusCheckItemRenderer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.id = "badge";
            if(!(_loc2_ && _loc3_))
            {
               addr0048:
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.document = this;
                     if(_loc3_ || Boolean(this))
                     {
                        addr0079:
                        this.badge = _loc1_;
                        if(_loc3_)
                        {
                           addr0083:
                           BindingManager.executeBindings(this,"badge",this.badge);
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0083);
               }
               §§goto(addr0079);
            }
            §§goto(addr0083);
         }
         §§goto(addr0048);
      }
      
      private function _SecurityStatusCheckItemRenderer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.right = -5;
            if(!_loc2_)
            {
               _loc1_.id = "check";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.document = this;
                        if(_loc3_ || _loc3_)
                        {
                           §§goto(addr0072);
                        }
                     }
                     §§goto(addr0084);
                  }
               }
               addr0072:
               this.check = _loc1_;
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr0084:
                  BindingManager.executeBindings(this,"check",this.check);
               }
               return _loc1_;
            }
         }
         §§goto(addr0084);
      }
      
      private function _SecurityStatusCheckItemRenderer_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.horizontalAlign = "center";
            if(_loc2_ || _loc3_)
            {
               _loc1_.verticalAlign = "middle";
               if(_loc2_)
               {
                  addr004f:
                  _loc1_.percentWidth = 100;
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.mxmlContent = [this._SecurityStatusCheckItemRenderer_LocaLabel1_i()];
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr0091:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr0095);
                  }
                  §§goto(addr0091);
               }
               addr0095:
               return _loc1_;
            }
         }
         §§goto(addr004f);
      }
      
      private function _SecurityStatusCheckItemRenderer_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.styleName = "securityPos";
            if(_loc2_)
            {
               _loc1_.id = "securityLabel";
               if(_loc2_)
               {
                  addr0046:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        _loc1_.document = this;
                        if(_loc2_)
                        {
                           addr0068:
                           this.securityLabel = _loc1_;
                           if(!(_loc3_ && _loc3_))
                           {
                              BindingManager.executeBindings(this,"securityLabel",this.securityLabel);
                           }
                        }
                        §§goto(addr0087);
                     }
                  }
                  §§goto(addr0068);
               }
               addr0087:
               return _loc1_;
            }
            §§goto(addr0046);
         }
         §§goto(addr0068);
      }
      
      private function _SecurityStatusCheckItemRenderer_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "good_divider";
               if(!_loc3_)
               {
                  _loc1_.height = 70;
                  if(_loc2_)
                  {
                     _loc1_.id = "divider";
                     if(!(_loc3_ && Boolean(this)))
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              addr0086:
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 addr008f:
                                 this.divider = _loc1_;
                                 if(_loc2_ || Boolean(_loc1_))
                                 {
                                    addr00a1:
                                    BindingManager.executeBindings(this,"divider",this.divider);
                                 }
                                 §§goto(addr00ae);
                              }
                              §§goto(addr00a1);
                           }
                           §§goto(addr00ae);
                        }
                        §§goto(addr008f);
                     }
                  }
               }
            }
            addr00ae:
            return _loc1_;
         }
         §§goto(addr0086);
      }
      
      [Bindable(event="propertyChange")]
      public function get badge() : BriskImageDynaLib
      {
         return this._93494179badge;
      }
      
      public function set badge(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._93494179badge;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._93494179badge = param1;
                  if(_loc4_ || _loc3_)
                  {
                     addr005c:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"badge",_loc2_,param1));
                        }
                     }
                     §§goto(addr007a);
                  }
                  §§goto(addr006b);
               }
            }
            addr007a:
            return;
         }
         §§goto(addr005c);
      }
      
      [Bindable(event="propertyChange")]
      public function get base() : BriskImageDynaLib
      {
         return this._3016401base;
      }
      
      public function set base(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._3016401base;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._3016401base = param1;
                  addr0038:
                  if(_loc3_ || Boolean(this))
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"base",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0057);
            }
            addr0075:
            return;
         }
         §§goto(addr0038);
      }
      
      [Bindable(event="propertyChange")]
      public function get check() : BriskImageDynaLib
      {
         return this._94627080check;
      }
      
      public function set check(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._94627080check;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._94627080check = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"check",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get divider() : BriskImageDynaLib
      {
         return this._1674318617divider;
      }
      
      public function set divider(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1674318617divider;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._1674318617divider = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"divider",_loc2_,param1));
                        }
                     }
                     §§goto(addr0073);
                  }
               }
               §§goto(addr0064);
            }
            addr0073:
            return;
         }
         §§goto(addr0064);
      }
      
      [Bindable(event="propertyChange")]
      public function get securityLabel() : LocaLabel
      {
         return this._722296940securityLabel;
      }
      
      public function set securityLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._722296940securityLabel;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._722296940securityLabel = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"securityLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr0076);
               }
            }
            addr0085:
            return;
         }
         §§goto(addr0076);
      }
   }
}

