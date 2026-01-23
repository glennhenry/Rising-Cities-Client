package net.bigpoint.cityrama.view.departmentBook.ui.components
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.model.departmentBook.vo.ProfessionalDepartmentSlotVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class DepartmentSlotItemrenderer extends ItemRenderer implements IStateClient2
   {
      
      public static const SLOT_CLICKED:String = "SLOT_CLICKED";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         SLOT_CLICKED = "SLOT_CLICKED";
      }
      
      private var _1422826205attentionImage:BriskImageDynaLib;
      
      private var _1060367224badgeImage:BriskImageDynaLib;
      
      private var _795017652clickLabel:LocaLabel;
      
      private var _1420004117emptySlot:Group;
      
      private var _116713604expireImage:BriskImageDynaLib;
      
      private var _76117376filledSlot:Group;
      
      private var _177606215infoIcon:BriskImageDynaLib;
      
      private var _1844466615nameDisplay:LocaLabel;
      
      private var _1211656884nameGroup:Group;
      
      private var _1034926718profImage:BriskImageDynaLib;
      
      private var _339532710serviceImage:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ProfessionalDepartmentSlotVo;
      
      private var _dataIsDirty:Boolean = false;
      
      public function DepartmentSlotItemrenderer()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
            if(_loc1_)
            {
               mx_internal::_document = this;
               if(!_loc2_)
               {
                  this.autoDrawBackground = false;
                  if(_loc1_)
                  {
                     this.width = 137;
                     if(!_loc2_)
                     {
                        addr004c:
                        this.percentHeight = 100;
                        if(!(_loc2_ && Boolean(this)))
                        {
                           this.mxmlContent = [this._DepartmentSlotItemrenderer_Group1_i(),this._DepartmentSlotItemrenderer_Group3_i(),this._DepartmentSlotItemrenderer_BriskImageDynaLib9_i()];
                           if(_loc1_ || Boolean(this))
                           {
                              this.currentState = "normal";
                              if(_loc1_)
                              {
                                 this.addEventListener("creationComplete",this.___DepartmentSlotItemrenderer_ItemRenderer1_creationComplete);
                                 if(_loc1_)
                                 {
                                    §§goto(addr00a9);
                                 }
                                 §§goto(addr00ba);
                              }
                              addr00a9:
                              this.addEventListener("click",this.___DepartmentSlotItemrenderer_ItemRenderer1_click);
                              if(_loc1_)
                              {
                                 states = [new State({
                                    "name":"normal",
                                    "overrides":[]
                                 }),new State({
                                    "name":"hovered",
                                    "overrides":[new SetProperty().initializeFromObject({
                                       "target":"infoIcon",
                                       "name":"dynaBmpSourceName",
                                       "value":"architect_icon_detailinfo_mouseover"
                                    })]
                                 }),new State({
                                    "name":"disabled",
                                    "overrides":[]
                                 })];
                                 addr00ba:
                              }
                           }
                           §§goto(addr0116);
                        }
                        §§goto(addr00ba);
                     }
                     §§goto(addr00a9);
                  }
               }
               addr0116:
               return;
            }
            §§goto(addr004c);
         }
         §§goto(addr00a9);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            super.moduleFactory = param1;
            if(!(_loc3_ && _loc2_))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super.initialize();
         }
      }
      
      protected function handleCreationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            TweenMax.to(this.infoIcon,0,{"glowFilter":{
               "color":13475921,
               "alpha":1,
               "blurX":2,
               "blurY":2,
               "strength":20
            }});
         }
      }
      
      override public function set currentState(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            super.currentState = param1;
         }
      }
      
      override public function set data(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.data = param1;
            if(_loc3_)
            {
               if(!RandomUtilities.isEqual(param1,this._data))
               {
                  if(!_loc2_)
                  {
                     addr004d:
                     this._data = param1 as ProfessionalDepartmentSlotVo;
                     if(!_loc2_)
                     {
                        addr005b:
                        this._dataIsDirty = true;
                        if(!(_loc2_ && _loc3_))
                        {
                           addr006d:
                           invalidateProperties();
                        }
                     }
                     §§goto(addr0072);
                  }
                  §§goto(addr005b);
               }
               addr0072:
               return;
            }
            §§goto(addr006d);
         }
         §§goto(addr004d);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(!(_loc5_ && Boolean(_loc2_)))
         {
            super.commitProperties();
            if(_loc4_)
            {
               §§push(this._dataIsDirty);
               if(!(_loc5_ && Boolean(_loc2_)))
               {
                  if(§§pop())
                  {
                     if(!(_loc5_ && Boolean(this)))
                     {
                        this._dataIsDirty = false;
                        if(_loc4_)
                        {
                           §§push(this.clickLabel);
                           §§push(ResourceManager.getInstance());
                           §§push("rcl.booklayer.departmentBook");
                           if(!(_loc5_ && Boolean(_loc2_)))
                           {
                              §§push("");
                              if(!_loc5_)
                              {
                                 addr0087:
                                 §§push(§§pop() + §§pop());
                                 §§push("rcl.booklayer.departmentBook.professionalSlot.free");
                                 if(_loc4_ || Boolean(_loc2_))
                                 {
                                    §§push(§§pop() + "");
                                 }
                              }
                              §§pop().text = §§pop().getString(§§pop(),§§pop());
                              if(_loc4_ || _loc3_)
                              {
                                 var _temp_8:* = this.emptySlot;
                                 var _loc3_:*;
                                 this.emptySlot.includeInLayout = _loc3_ = this._data.empty;
                                 _temp_8.visible = _loc3_;
                                 if(!_loc5_)
                                 {
                                    this.filledSlot.visible = this.filledSlot.includeInLayout = !this._data.empty;
                                    if(_loc4_)
                                    {
                                       §§push(this.attentionImage);
                                       if(!_loc5_)
                                       {
                                          this.attentionImage.includeInLayout = _loc3_ = this._data.canLevelUp;
                                          §§pop().visible = _loc3_;
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             §§push(this.expireImage);
                                             if(_loc4_)
                                             {
                                                this.expireImage.includeInLayout = _loc3_ = false;
                                                §§pop().visible = _loc3_;
                                                if(!(_loc5_ && Boolean(this)))
                                                {
                                                   §§push(this._data);
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      §§push(§§pop().empty);
                                                      if(_loc4_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               this.serviceImage.dynaBmpSourceName = this._data.departmentGfxId.toString();
                                                               if(_loc4_ || Boolean(this))
                                                               {
                                                                  addr0183:
                                                                  §§push(this._data);
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     addr0199:
                                                                     if(§§pop().activeAcademy)
                                                                     {
                                                                        if(!(_loc5_ && Boolean(_loc1_)))
                                                                        {
                                                                           addr01ab:
                                                                           §§push(ResourceManager.getInstance());
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§push("rcl.emergencybook.layer");
                                                                              if(_loc4_)
                                                                              {
                                                                                 §§push("");
                                                                                 if(!(_loc5_ && Boolean(_loc1_)))
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §§push("emergencybook.layer.department.");
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          §§push(this._data);
                                                                                          if(!(_loc5_ && _loc3_))
                                                                                          {
                                                                                             §§push(§§pop().profDepartment);
                                                                                             if(!(_loc5_ && Boolean(_loc2_)))
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(!(_loc5_ && Boolean(_loc2_)))
                                                                                                {
                                                                                                   §§push(§§pop().getString(§§pop(),§§pop()));
                                                                                                   if(!(_loc5_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(_loc4_ || Boolean(_loc2_))
                                                                                                      {
                                                                                                         _loc1_ = §§pop();
                                                                                                         if(!(_loc5_ && Boolean(this)))
                                                                                                         {
                                                                                                            this.emptySlot.toolTip = StringUtil.substitute(ResourceManager.getInstance().getString("rcl.tooltips.departmentBook" + "","rcl.tooltips.departmentBook.freeSlot" + ""),_loc1_);
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               §§push(this.infoIcon);
                                                                                                               if(!(_loc5_ && Boolean(_loc1_)))
                                                                                                               {
                                                                                                                  §§push(true);
                                                                                                                  if(!(_loc5_ && Boolean(_loc2_)))
                                                                                                                  {
                                                                                                                     §§pop().visible = §§pop();
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr02ac:
                                                                                                                     §§pop().visible = §§pop();
                                                                                                                     if(!(_loc5_ && Boolean(this)))
                                                                                                                     {
                                                                                                                        addr02bc:
                                                                                                                        this.emptySlot.toolTip = ResourceManager.getInstance().getString("rcl.tooltips.departmentBook" + "","rcl.tooltips.departmentBook.freeSlotAcademyDeactive" + "");
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           addr0333:
                                                                                                                           this.profImage.dynaBmpSourceName = this._data.profImage;
                                                                                                                           addr0328:
                                                                                                                           addr0330:
                                                                                                                           addr032c:
                                                                                                                           if(!(_loc5_ && _loc3_))
                                                                                                                           {
                                                                                                                              addr0343:
                                                                                                                              §§push(this.nameDisplay);
                                                                                                                              if(_loc4_ || Boolean(this))
                                                                                                                              {
                                                                                                                                 §§pop().text = this._data.name;
                                                                                                                                 if(_loc4_ || Boolean(_loc2_))
                                                                                                                                 {
                                                                                                                                    addr0370:
                                                                                                                                    if(this._data.operationsLeft > 0)
                                                                                                                                    {
                                                                                                                                       if(_loc4_ || Boolean(_loc2_))
                                                                                                                                       {
                                                                                                                                          addr0387:
                                                                                                                                          §§push(this.nameDisplay);
                                                                                                                                          if(_loc4_)
                                                                                                                                          {
                                                                                                                                             addr0391:
                                                                                                                                             §§push("specialistSlotName");
                                                                                                                                             if(_loc4_)
                                                                                                                                             {
                                                                                                                                                §§pop().styleName = §§pop();
                                                                                                                                                if(_loc4_ || Boolean(_loc2_))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr03be);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr03b6:
                                                                                                                                                §§pop().styleName = §§pop();
                                                                                                                                                if(!_loc5_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr03be);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr03e3);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr03b2:
                                                                                                                                             §§push("specialistSlotNameOperationLow");
                                                                                                                                          }
                                                                                                                                          §§goto(addr03b6);
                                                                                                                                       }
                                                                                                                                       addr03be:
                                                                                                                                       §§push(this.badgeImage);
                                                                                                                                       if(_loc4_)
                                                                                                                                       {
                                                                                                                                          §§pop().dynaBmpSourceName = this._data.profSpecialisationGfxId.toString();
                                                                                                                                          if(!(_loc5_ && Boolean(_loc1_)))
                                                                                                                                          {
                                                                                                                                             addr03e3:
                                                                                                                                             addr03e9:
                                                                                                                                             §§push(ResourceManager.getInstance());
                                                                                                                                             §§push("rcl.professions");
                                                                                                                                             if(!_loc5_)
                                                                                                                                             {
                                                                                                                                                addr042b:
                                                                                                                                                addr0418:
                                                                                                                                                addr03f2:
                                                                                                                                                §§push("");
                                                                                                                                                if(!_loc5_)
                                                                                                                                                {
                                                                                                                                                   addr03fb:
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   §§push("rcl.professions.");
                                                                                                                                                   if(_loc4_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      addr0413:
                                                                                                                                                      addr0410:
                                                                                                                                                      addr040c:
                                                                                                                                                      §§push(§§pop() + this._data.profSpecialisationLocaId.toString());
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§push(§§pop().getString(§§pop(),§§pop()));
                                                                                                                                                if(!(_loc5_ && Boolean(_loc2_)))
                                                                                                                                                {
                                                                                                                                                   addr042a:
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                }
                                                                                                                                                _loc2_ = §§pop();
                                                                                                                                                if(_loc4_ || Boolean(this))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr043a);
                                                                                                                                                }
                                                                                                                                                §§goto(addr047e);
                                                                                                                                             }
                                                                                                                                             §§goto(addr03fb);
                                                                                                                                          }
                                                                                                                                          addr043a:
                                                                                                                                          §§goto(addr043e);
                                                                                                                                       }
                                                                                                                                       addr043e:
                                                                                                                                       §§push(this.badgeImage);
                                                                                                                                       §§push(StringUtil);
                                                                                                                                       §§push(ResourceManager.getInstance());
                                                                                                                                       §§push("rcl.tooltips.departmentBook");
                                                                                                                                       if(!_loc5_)
                                                                                                                                       {
                                                                                                                                          §§push("");
                                                                                                                                          if(!_loc5_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr0459);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0462);
                                                                                                                                       }
                                                                                                                                       addr0459:
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       §§push("rcl.tooltips.departmentBook.specialization");
                                                                                                                                       if(_loc4_)
                                                                                                                                       {
                                                                                                                                          addr0462:
                                                                                                                                          §§push(§§pop() + "");
                                                                                                                                       }
                                                                                                                                       §§pop().toolTip = §§pop().substitute(§§pop().getString(§§pop(),§§pop()),_loc2_);
                                                                                                                                       if(!(_loc5_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          addr047e:
                                                                                                                                          addr0482:
                                                                                                                                          §§push(this.attentionImage);
                                                                                                                                          §§push(ResourceManager.getInstance());
                                                                                                                                          §§push("rcl.tooltips.departmentBook");
                                                                                                                                          if(_loc4_)
                                                                                                                                          {
                                                                                                                                             §§push("");
                                                                                                                                             if(_loc4_ || Boolean(_loc1_))
                                                                                                                                             {
                                                                                                                                                §§goto(addr04a2);
                                                                                                                                             }
                                                                                                                                             §§goto(addr04b4);
                                                                                                                                          }
                                                                                                                                          addr04a2:
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          §§push("rcl.tooltips.departmentBook.leveledUp");
                                                                                                                                          if(!(_loc5_ && Boolean(_loc2_)))
                                                                                                                                          {
                                                                                                                                             addr04b4:
                                                                                                                                             §§push(§§pop() + "");
                                                                                                                                          }
                                                                                                                                          §§pop().toolTip = §§pop().getString(§§pop(),§§pop());
                                                                                                                                          if(!(_loc5_ && Boolean(this)))
                                                                                                                                          {
                                                                                                                                             addr04d7:
                                                                                                                                             addr04db:
                                                                                                                                             §§push(this.expireImage);
                                                                                                                                             §§push(ResourceManager.getInstance());
                                                                                                                                             §§push("rcl.tooltips.departmentBook");
                                                                                                                                             if(!_loc5_)
                                                                                                                                             {
                                                                                                                                                §§push("");
                                                                                                                                                if(_loc4_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr04f3);
                                                                                                                                                }
                                                                                                                                                §§goto(addr04fd);
                                                                                                                                             }
                                                                                                                                             addr04f3:
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             §§push("rcl.tooltips.departmentBook.noMoreOperations");
                                                                                                                                             if(_loc4_)
                                                                                                                                             {
                                                                                                                                                addr04fd:
                                                                                                                                                §§push(§§pop() + "");
                                                                                                                                             }
                                                                                                                                             §§pop().toolTip = §§pop().getString(§§pop(),§§pop());
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr0506);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§push(this.nameDisplay);
                                                                                                                                    }
                                                                                                                                    §§goto(addr03b2);
                                                                                                                                 }
                                                                                                                                 §§goto(addr047e);
                                                                                                                              }
                                                                                                                              §§goto(addr0391);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr0506);
                                                                                                                     }
                                                                                                                     §§goto(addr04d7);
                                                                                                                  }
                                                                                                                  §§goto(addr0506);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr02ab:
                                                                                                                  §§push(false);
                                                                                                               }
                                                                                                               §§goto(addr02ac);
                                                                                                            }
                                                                                                            §§goto(addr043a);
                                                                                                         }
                                                                                                         §§goto(addr02bc);
                                                                                                      }
                                                                                                      §§goto(addr042b);
                                                                                                   }
                                                                                                   §§goto(addr042a);
                                                                                                }
                                                                                                §§goto(addr0418);
                                                                                             }
                                                                                             §§goto(addr0413);
                                                                                          }
                                                                                          §§goto(addr0410);
                                                                                       }
                                                                                       §§goto(addr0418);
                                                                                    }
                                                                                    §§goto(addr03fb);
                                                                                 }
                                                                                 §§goto(addr040c);
                                                                              }
                                                                              §§goto(addr03f2);
                                                                           }
                                                                           §§goto(addr03e9);
                                                                        }
                                                                        §§goto(addr0506);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(this.infoIcon);
                                                                     }
                                                                     §§goto(addr02ab);
                                                                  }
                                                                  §§goto(addr0370);
                                                               }
                                                            }
                                                            §§goto(addr03be);
                                                         }
                                                         else
                                                         {
                                                            §§push(this.profImage);
                                                            if(!(_loc5_ && Boolean(_loc2_)))
                                                            {
                                                               §§push(this._data);
                                                               if(!(_loc5_ && _loc3_))
                                                               {
                                                                  §§push(§§pop().profLib);
                                                                  if(_loc4_ || Boolean(_loc1_))
                                                                  {
                                                                     §§pop().dynaLibName = §§pop();
                                                                     if(_loc4_ || _loc3_)
                                                                     {
                                                                        §§goto(addr0328);
                                                                     }
                                                                     §§goto(addr0343);
                                                                  }
                                                                  §§goto(addr0333);
                                                               }
                                                               §§goto(addr0330);
                                                            }
                                                         }
                                                         §§goto(addr032c);
                                                      }
                                                      §§goto(addr0199);
                                                   }
                                                   §§goto(addr0370);
                                                }
                                                §§goto(addr01ab);
                                             }
                                             §§goto(addr04db);
                                          }
                                          §§goto(addr01ab);
                                       }
                                       §§goto(addr0482);
                                    }
                                    §§goto(addr0506);
                                 }
                                 §§goto(addr043a);
                              }
                              §§goto(addr02bc);
                           }
                           §§goto(addr0087);
                        }
                        §§goto(addr0343);
                     }
                     §§goto(addr0183);
                  }
                  §§goto(addr0506);
               }
               §§goto(addr0199);
            }
            §§goto(addr0387);
         }
         addr0506:
      }
      
      private function handleClick(param1:Event = null) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(this._data)
            {
               if(!(_loc3_ && _loc2_))
               {
                  addr002e:
                  dispatchEvent(new Event(SLOT_CLICKED,true));
               }
            }
            return;
         }
         §§goto(addr002e);
      }
      
      private function _DepartmentSlotItemrenderer_Group1_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._DepartmentSlotItemrenderer_VGroup1_c()];
                  if(_loc3_)
                  {
                     addr0061:
                     _loc1_.id = "emptySlot";
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              §§goto(addr0080);
                           }
                           §§goto(addr00b0);
                        }
                     }
                     §§goto(addr009e);
                  }
                  addr0080:
                  _loc1_.document = this;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr009e:
                     this.emptySlot = _loc1_;
                     if(!(_loc2_ && _loc2_))
                     {
                        addr00b0:
                        BindingManager.executeBindings(this,"emptySlot",this.emptySlot);
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr00b0);
            }
            §§goto(addr0061);
         }
         §§goto(addr00b0);
      }
      
      private function _DepartmentSlotItemrenderer_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.gap = -5;
                  if(_loc3_)
                  {
                     _loc1_.mxmlContent = [this._DepartmentSlotItemrenderer_StickyNoteComponent1_c(),this._DepartmentSlotItemrenderer_Group2_c()];
                     if(!(_loc2_ && Boolean(this)))
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr0093:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0097);
                     }
                  }
               }
               §§goto(addr0093);
            }
            addr0097:
            return _loc1_;
         }
         §§goto(addr0093);
      }
      
      private function _DepartmentSlotItemrenderer_StickyNoteComponent1_c() : StickyNoteComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(_loc2_)
         {
            _loc1_.tapeTop = true;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.percentWidth = 100;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.height = 140;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._DepartmentSlotItemrenderer_Array5_c);
                     if(!(_loc3_ && _loc2_))
                     {
                        addr008c:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr0098:
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0098);
         }
         §§goto(addr008c);
      }
      
      private function _DepartmentSlotItemrenderer_Array5_c() : Array
      {
         return [this._DepartmentSlotItemrenderer_VGroup2_c()];
      }
      
      private function _DepartmentSlotItemrenderer_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr005b:
                     _loc1_.horizontalAlign = "center";
                     if(_loc3_ || Boolean(this))
                     {
                        _loc1_.mxmlContent = [this._DepartmentSlotItemrenderer_BriskImageDynaLib1_i()];
                        if(!_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 addr009e:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr00a2);
                     }
                  }
                  §§goto(addr009e);
               }
               §§goto(addr005b);
            }
         }
         addr00a2:
         return _loc1_;
      }
      
      private function _DepartmentSlotItemrenderer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "big_badges";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "";
               if(_loc2_)
               {
                  _loc1_.dynaSWFFileName = "gui_ui_emergencyDepartmentsIcons";
                  if(!_loc3_)
                  {
                     _loc1_.id = "serviceImage";
                     if(_loc2_)
                     {
                        addr0058:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr0070:
                              _loc1_.document = this;
                              if(_loc2_ || Boolean(this))
                              {
                                 addr0081:
                                 this.serviceImage = _loc1_;
                                 if(!_loc3_)
                                 {
                                    addr008b:
                                    BindingManager.executeBindings(this,"serviceImage",this.serviceImage);
                                 }
                                 §§goto(addr0098);
                              }
                              §§goto(addr008b);
                           }
                           §§goto(addr0098);
                        }
                        §§goto(addr0081);
                     }
                     addr0098:
                     return _loc1_;
                  }
                  §§goto(addr0081);
               }
               §§goto(addr0058);
            }
            §§goto(addr0070);
         }
         §§goto(addr0081);
      }
      
      private function _DepartmentSlotItemrenderer_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc3_)
         {
            _loc1_.bottom = 44;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.percentWidth = 100;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.mxmlContent = [this._DepartmentSlotItemrenderer_HGroup1_c(),this._DepartmentSlotItemrenderer_LocaLabel1_i()];
                  if(!_loc2_)
                  {
                     §§goto(addr007a);
                  }
                  §§goto(addr0086);
               }
            }
            addr007a:
            if(!_loc1_.document)
            {
               if(!_loc2_)
               {
                  addr0086:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0086);
      }
      
      private function _DepartmentSlotItemrenderer_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.gap = 0;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.left = 8;
               if(_loc3_)
               {
                  _loc1_.right = 8;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.percentWidth = 100;
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.verticalAlign = "middle";
                        if(_loc3_)
                        {
                           _loc1_.horizontalAlign = "center";
                           addr0078:
                           if(_loc3_)
                           {
                              _loc1_.mxmlContent = [this._DepartmentSlotItemrenderer_BriskImageDynaLib2_c(),this._DepartmentSlotItemrenderer_BriskImageDynaLib3_c(),this._DepartmentSlotItemrenderer_BriskImageDynaLib4_c()];
                              if(!_loc2_)
                              {
                                 addr00aa:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc3_)
                                    {
                                       addr00b6:
                                       _loc1_.document = this;
                                    }
                                 }
                              }
                              §§goto(addr00ba);
                           }
                           §§goto(addr00aa);
                        }
                        §§goto(addr00b6);
                     }
                     addr00ba:
                     return _loc1_;
                  }
               }
               §§goto(addr0078);
            }
            §§goto(addr00b6);
         }
         §§goto(addr0078);
      }
      
      private function _DepartmentSlotItemrenderer_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "bluemarker_small_left";
               if(_loc2_)
               {
                  addr0047:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr0057);
            }
            §§goto(addr0047);
         }
         addr0057:
         return _loc1_;
      }
      
      private function _DepartmentSlotItemrenderer_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(!_loc3_)
            {
               §§goto(addr0035);
            }
            §§goto(addr0056);
         }
         addr0035:
         _loc1_.dynaBmpSourceName = "bluemarker_small_middle";
         if(!(_loc3_ && _loc2_))
         {
            addr0056:
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && Boolean(this)))
            {
               §§goto(addr0068);
            }
            §§goto(addr0074);
         }
         addr0068:
         if(!_loc1_.document)
         {
            if(_loc2_)
            {
               addr0074:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _DepartmentSlotItemrenderer_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "bluemarker_small_right";
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc3_)
                     {
                        addr006a:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr006a);
      }
      
      private function _DepartmentSlotItemrenderer_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.verticalCenter = 0;
               if(_loc3_ || _loc3_)
               {
                  addr0052:
                  _loc1_.styleName = "emergencySlotClickLabel";
                  if(!_loc2_)
                  {
                     _loc1_.maxDisplayedLines = 1;
                     if(_loc3_)
                     {
                        §§goto(addr0069);
                     }
                     §§goto(addr0093);
                  }
                  addr0069:
                  _loc1_.id = "clickLabel";
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr0093:
                           _loc1_.document = this;
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              addr00a4:
                              this.clickLabel = _loc1_;
                              if(_loc3_)
                              {
                                 BindingManager.executeBindings(this,"clickLabel",this.clickLabel);
                              }
                           }
                           §§goto(addr00bb);
                        }
                     }
                     §§goto(addr00a4);
                  }
                  §§goto(addr00bb);
               }
               addr00bb:
               return _loc1_;
            }
            §§goto(addr0052);
         }
         §§goto(addr0069);
      }
      
      private function _DepartmentSlotItemrenderer_Group3_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.mxmlContent = [this._DepartmentSlotItemrenderer_Group4_i(),this._DepartmentSlotItemrenderer_Group5_c()];
                  if(_loc2_ || _loc2_)
                  {
                     addr0063:
                     _loc1_.id = "filledSlot";
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 addr0091:
                                 this.filledSlot = _loc1_;
                                 if(_loc2_)
                                 {
                                    addr009b:
                                    BindingManager.executeBindings(this,"filledSlot",this.filledSlot);
                                 }
                              }
                              §§goto(addr00a8);
                           }
                        }
                        §§goto(addr0091);
                     }
                     §§goto(addr009b);
                  }
               }
            }
            addr00a8:
            return _loc1_;
         }
         §§goto(addr0063);
      }
      
      private function _DepartmentSlotItemrenderer_Group4_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc3_)
         {
            _loc1_.bottom = 12;
            if(_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.mxmlContent = [this._DepartmentSlotItemrenderer_StickyNoteComponent2_c()];
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr0069:
                     _loc1_.id = "nameGroup";
                     if(!(_loc2_ && _loc2_))
                     {
                        addr007c:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(this))
                           {
                              _loc1_.document = this;
                              if(!(_loc2_ && _loc3_))
                              {
                                 §§goto(addr00ac);
                              }
                              §§goto(addr00b6);
                           }
                        }
                        addr00ac:
                        this.nameGroup = _loc1_;
                        if(!_loc2_)
                        {
                           addr00b6:
                           BindingManager.executeBindings(this,"nameGroup",this.nameGroup);
                        }
                        §§goto(addr00c3);
                     }
                  }
                  addr00c3:
                  return _loc1_;
               }
            }
            §§goto(addr0069);
         }
         §§goto(addr007c);
      }
      
      private function _DepartmentSlotItemrenderer_StickyNoteComponent2_c() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.percentWidth = 93;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.height = 60;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.bottom = -10;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§goto(addr0069);
                  }
                  §§goto(addr00a7);
               }
               addr0069:
               _loc1_.horizontalCenter = 0;
               if(!(_loc2_ && _loc3_))
               {
                  addr0086:
                  _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._DepartmentSlotItemrenderer_Array11_c);
                  if(_loc3_)
                  {
                     §§goto(addr009b);
                  }
                  §§goto(addr00a7);
               }
               addr009b:
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr00a7:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr00ab);
            }
            §§goto(addr0086);
         }
         addr00ab:
         return _loc1_;
      }
      
      private function _DepartmentSlotItemrenderer_Array11_c() : Array
      {
         return [this._DepartmentSlotItemrenderer_LocaLabel2_i()];
      }
      
      private function _DepartmentSlotItemrenderer_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || _loc2_)
         {
            _loc1_.showTruncationTip = true;
            if(!_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(_loc2_)
               {
                  _loc1_.percentHeight = 100;
                  if(!_loc3_)
                  {
                     addr0046:
                     _loc1_.maxDisplayedLines = 1;
                     if(!(_loc3_ && _loc3_))
                     {
                        addr0065:
                        _loc1_.styleName = "specialistSlotName";
                        if(_loc2_ || Boolean(this))
                        {
                           _loc1_.id = "nameDisplay";
                           if(!_loc3_)
                           {
                              addr0083:
                              if(!_loc1_.document)
                              {
                                 if(!_loc3_)
                                 {
                                    §§goto(addr0099);
                                 }
                              }
                              §§goto(addr00aa);
                           }
                           addr0099:
                           _loc1_.document = this;
                           if(!(_loc3_ && _loc2_))
                           {
                              addr00aa:
                              this.nameDisplay = _loc1_;
                              if(_loc2_)
                              {
                                 BindingManager.executeBindings(this,"nameDisplay",this.nameDisplay);
                              }
                           }
                        }
                        §§goto(addr00c1);
                     }
                     §§goto(addr00aa);
                  }
                  §§goto(addr0083);
               }
               addr00c1:
               return _loc1_;
            }
            §§goto(addr0065);
         }
         §§goto(addr0046);
      }
      
      private function _DepartmentSlotItemrenderer_Group5_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.top = 0;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.percentWidth = 100;
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._DepartmentSlotItemrenderer_BriskImageDynaLib5_i(),this._DepartmentSlotItemrenderer_BriskMCDynaLib1_c(),this._DepartmentSlotItemrenderer_BriskImageDynaLib6_i(),this._DepartmentSlotItemrenderer_BriskImageDynaLib7_i(),this._DepartmentSlotItemrenderer_BriskImageDynaLib8_i()];
                  addr0050:
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr008e:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr00a2:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr00a6);
                  }
                  §§goto(addr00a2);
               }
               addr00a6:
               return _loc1_;
            }
            §§goto(addr0050);
         }
         §§goto(addr008e);
      }
      
      private function _DepartmentSlotItemrenderer_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_FriendBook";
            if(_loc3_)
            {
               _loc1_.horizontalCenter = 0;
               if(_loc3_)
               {
                  _loc1_.top = 8;
                  if(_loc3_ || _loc2_)
                  {
                     addr005b:
                     _loc1_.dynaBmpSourceName = "polaroid_friend";
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.id = "profImage";
                        if(_loc3_)
                        {
                           addr0079:
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr008d:
                                 _loc1_.document = this;
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr00aa:
                                    this.profImage = _loc1_;
                                    if(_loc3_ || _loc3_)
                                    {
                                       addr00bc:
                                       BindingManager.executeBindings(this,"profImage",this.profImage);
                                    }
                                 }
                                 §§goto(addr00c9);
                              }
                              §§goto(addr00bc);
                           }
                           §§goto(addr00aa);
                        }
                        addr00c9:
                        return _loc1_;
                     }
                  }
                  §§goto(addr0079);
               }
               §§goto(addr005b);
            }
            §§goto(addr008d);
         }
         §§goto(addr00bc);
      }
      
      private function _DepartmentSlotItemrenderer_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc3_)
            {
               _loc1_.top = -5;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.percentWidth = 60;
                  if(_loc2_ || _loc2_)
                  {
                     addr0062:
                     _loc1_.horizontalCenter = 0;
                     if(!(_loc3_ && _loc3_))
                     {
                        addr0081:
                        _loc1_.dynaMCSourceName = "stickytape_top";
                        if(_loc2_ || Boolean(this))
                        {
                           §§goto(addr0095);
                        }
                     }
                  }
                  §§goto(addr00a1);
               }
               addr0095:
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr00a1:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
            §§goto(addr0062);
         }
         §§goto(addr0081);
      }
      
      private function _DepartmentSlotItemrenderer_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "diagonal_badges";
            if(_loc3_)
            {
               _loc1_.top = 0;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.left = 0;
                  if(_loc3_)
                  {
                     _loc1_.dynaSWFFileName = "gui_ui_emergencyDepartmentsIcons";
                     if(_loc3_ || _loc3_)
                     {
                        addr0072:
                        _loc1_.dynaBmpSourceName = "";
                        if(_loc3_ || _loc3_)
                        {
                           addr0084:
                           _loc1_.id = "badgeImage";
                           if(_loc3_ || Boolean(this))
                           {
                              addr0097:
                              if(!_loc1_.document)
                              {
                                 if(_loc3_)
                                 {
                                    _loc1_.document = this;
                                    if(_loc3_ || Boolean(_loc1_))
                                    {
                                       addr00c2:
                                       this.badgeImage = _loc1_;
                                       if(!_loc2_)
                                       {
                                          addr00cc:
                                          BindingManager.executeBindings(this,"badgeImage",this.badgeImage);
                                       }
                                    }
                                    §§goto(addr00d9);
                                 }
                                 §§goto(addr00cc);
                              }
                           }
                           §§goto(addr00c2);
                        }
                        §§goto(addr00cc);
                     }
                     §§goto(addr00d9);
                  }
                  §§goto(addr0097);
               }
               §§goto(addr0072);
            }
            addr00d9:
            return _loc1_;
         }
         §§goto(addr0084);
      }
      
      private function _DepartmentSlotItemrenderer_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(!_loc3_)
            {
               _loc1_.top = 0;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.right = 0;
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.dynaBmpSourceName = "people_indicator_expire";
                     if(!(_loc3_ && _loc3_))
                     {
                        addr006f:
                        _loc1_.id = "expireImage";
                        if(_loc2_ || Boolean(this))
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 §§goto(addr009b);
                              }
                              §§goto(addr00b6);
                           }
                           §§goto(addr00ac);
                        }
                     }
                     §§goto(addr00b6);
                  }
                  §§goto(addr009b);
               }
               §§goto(addr00ac);
            }
            addr009b:
            _loc1_.document = this;
            if(_loc2_ || _loc3_)
            {
               addr00ac:
               this.expireImage = _loc1_;
               if(_loc2_)
               {
                  addr00b6:
                  BindingManager.executeBindings(this,"expireImage",this.expireImage);
               }
            }
            return _loc1_;
         }
         §§goto(addr006f);
      }
      
      private function _DepartmentSlotItemrenderer_BriskImageDynaLib8_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               addr003b:
               _loc1_.top = 0;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.right = 0;
                  if(_loc3_)
                  {
                     _loc1_.dynaBmpSourceName = "icon_levelUp_mini";
                     if(!(_loc2_ && Boolean(this)))
                     {
                        §§goto(addr0077);
                     }
                     §§goto(addr00c5);
                  }
               }
               addr0077:
               _loc1_.id = "attentionImage";
               if(_loc3_ || _loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           addr00b3:
                           this.attentionImage = _loc1_;
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              addr00c5:
                              BindingManager.executeBindings(this,"attentionImage",this.attentionImage);
                           }
                        }
                        §§goto(addr00d2);
                     }
                     §§goto(addr00c5);
                  }
                  §§goto(addr00b3);
               }
               §§goto(addr00d2);
            }
            addr00d2:
            return _loc1_;
         }
         §§goto(addr003b);
      }
      
      private function _DepartmentSlotItemrenderer_BriskImageDynaLib9_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_)
            {
               _loc1_.bottom = 62;
               if(_loc2_)
               {
                  _loc1_.right = 24;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.dynaBmpSourceName = "architect_icon_detailinfo";
                     if(!_loc3_)
                     {
                        addr005b:
                        _loc1_.id = "infoIcon";
                        if(_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr007f:
                                 _loc1_.document = this;
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    addr0090:
                                    this.infoIcon = _loc1_;
                                    if(_loc2_)
                                    {
                                       addr009a:
                                       BindingManager.executeBindings(this,"infoIcon",this.infoIcon);
                                    }
                                    §§goto(addr00a7);
                                 }
                                 §§goto(addr009a);
                              }
                              §§goto(addr00a7);
                           }
                           §§goto(addr0090);
                        }
                        §§goto(addr009a);
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr005b);
               }
               §§goto(addr009a);
            }
            addr00a7:
            return _loc1_;
         }
         §§goto(addr007f);
      }
      
      public function ___DepartmentSlotItemrenderer_ItemRenderer1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this.handleCreationComplete(param1);
         }
      }
      
      public function ___DepartmentSlotItemrenderer_ItemRenderer1_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this.handleClick();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get attentionImage() : BriskImageDynaLib
      {
         return this._1422826205attentionImage;
      }
      
      public function set attentionImage(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1422826205attentionImage;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._1422826205attentionImage = param1;
                  if(_loc4_ || _loc3_)
                  {
                     addr0069:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attentionImage",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0088);
               }
               §§goto(addr0069);
            }
            addr0088:
            return;
         }
         §§goto(addr0069);
      }
      
      [Bindable(event="propertyChange")]
      public function get badgeImage() : BriskImageDynaLib
      {
         return this._1060367224badgeImage;
      }
      
      public function set badgeImage(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1060367224badgeImage;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._1060367224badgeImage = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"badgeImage",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0075);
      }
      
      [Bindable(event="propertyChange")]
      public function get clickLabel() : LocaLabel
      {
         return this._795017652clickLabel;
      }
      
      public function set clickLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._795017652clickLabel;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._795017652clickLabel = param1;
                  addr0046:
                  if(!_loc3_)
                  {
                     addr005b:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clickLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0081);
               }
               §§goto(addr005b);
            }
            addr0081:
            return;
         }
         §§goto(addr0046);
      }
      
      [Bindable(event="propertyChange")]
      public function get emptySlot() : Group
      {
         return this._1420004117emptySlot;
      }
      
      public function set emptySlot(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1420004117emptySlot;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._1420004117emptySlot = param1;
                  if(!_loc4_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"emptySlot",_loc2_,param1));
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
         §§goto(addr0057);
      }
      
      [Bindable(event="propertyChange")]
      public function get expireImage() : BriskImageDynaLib
      {
         return this._116713604expireImage;
      }
      
      public function set expireImage(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._116713604expireImage;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._116713604expireImage = param1;
                  if(_loc3_)
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"expireImage",_loc2_,param1));
                        }
                     }
                     §§goto(addr0075);
                  }
               }
               §§goto(addr0066);
            }
            addr0075:
            return;
         }
         §§goto(addr0056);
      }
      
      [Bindable(event="propertyChange")]
      public function get filledSlot() : Group
      {
         return this._76117376filledSlot;
      }
      
      public function set filledSlot(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._76117376filledSlot;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._76117376filledSlot = param1;
                  addr0034:
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0062:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"filledSlot",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0071);
               }
               §§goto(addr0062);
            }
            addr0071:
            return;
         }
         §§goto(addr0034);
      }
      
      [Bindable(event="propertyChange")]
      public function get infoIcon() : BriskImageDynaLib
      {
         return this._177606215infoIcon;
      }
      
      public function set infoIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._177606215infoIcon;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._177606215infoIcon = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr005c:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoIcon",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr005c);
      }
      
      [Bindable(event="propertyChange")]
      public function get nameDisplay() : LocaLabel
      {
         return this._1844466615nameDisplay;
      }
      
      public function set nameDisplay(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1844466615nameDisplay;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1844466615nameDisplay = param1;
                  if(_loc3_ || _loc3_)
                  {
                     addr0054:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameDisplay",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0072);
               }
               §§goto(addr0054);
            }
            addr0072:
            return;
         }
         §§goto(addr0054);
      }
      
      [Bindable(event="propertyChange")]
      public function get nameGroup() : Group
      {
         return this._1211656884nameGroup;
      }
      
      public function set nameGroup(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1211656884nameGroup;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1211656884nameGroup = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr0075);
               }
               addr005e:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     addr0075:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameGroup",_loc2_,param1));
                  }
               }
               §§goto(addr0084);
            }
         }
         addr0084:
      }
      
      [Bindable(event="propertyChange")]
      public function get profImage() : BriskImageDynaLib
      {
         return this._1034926718profImage;
      }
      
      public function set profImage(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1034926718profImage;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._1034926718profImage = param1;
                  addr0042:
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr0060:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"profImage",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0060);
            }
            addr007f:
            return;
         }
         §§goto(addr0042);
      }
      
      [Bindable(event="propertyChange")]
      public function get serviceImage() : BriskImageDynaLib
      {
         return this._339532710serviceImage;
      }
      
      public function set serviceImage(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._339532710serviceImage;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._339532710serviceImage = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"serviceImage",_loc2_,param1));
                        }
                     }
                     §§goto(addr007d);
                  }
               }
               §§goto(addr006e);
            }
            addr007d:
            return;
         }
         §§goto(addr006e);
      }
   }
}

