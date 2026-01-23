package net.bigpoint.cityrama.view.featureScreens.ui.components
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
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.featureScreens.vo.FeatureScreenStepDataVo;
   import net.bigpoint.cityrama.model.featureScreens.vo.FeatureScreenVo;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.cityrama.view.featureScreens.ui.skins.FeatureListSkin;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.layouts.HorizontalLayout;
   
   public class FeatureScreenPopup extends PaperPopupWindow
   {
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc1_))
      {
         _skinParts = {
            "moveArea":false,
            "closeButton":false,
            "controlBarGroup":false,
            "contentGroup":false,
            "backButton":false,
            "tabBar":false,
            "sideMenu":false,
            "titleDisplay":false
         };
      }
      
      private var _377211724featureList:List;
      
      private var _1684755691flavorText:LocaLabel;
      
      private var _1055224494itemListGroup:HGroup;
      
      private var _1246295935listGroup:HGroup;
      
      private var _865758629pageLabel:LocaLabel;
      
      private var _66047092scrollLeft:DynamicImageButton;
      
      private var _2053120847scrollRight:DynamicImageButton;
      
      private var _226305183scrollerLeft:Group;
      
      private var _1580134914scrollerRight:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _featureData:FeatureScreenVo;
      
      private var _page:int = 1;
      
      private var _maxPage:int;
      
      private var _isDirty:Boolean;
      
      public function FeatureScreenPopup()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            if(!(_loc2_ && Boolean(this)))
            {
               mx_internal::_document = this;
               if(_loc1_ || _loc2_)
               {
                  addr0049:
                  this.showBackButton = false;
                  if(_loc1_)
                  {
                     addr0053:
                     this.width = 785;
                     if(!_loc2_)
                     {
                        this.height = 430;
                        if(_loc1_)
                        {
                           this.styleName = "featureScreen";
                           if(!(_loc2_ && _loc1_))
                           {
                              addr0086:
                              this.mxmlContentFactory = new DeferredInstanceFromFunction(this._FeatureScreenPopup_Array1_c);
                           }
                        }
                        §§goto(addr0096);
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr0053);
            }
            addr0096:
            return;
         }
         §§goto(addr0049);
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
                  if(_loc3_)
                  {
                     §§goto(addr0038);
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         addr0038:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.initialize();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc1_:ArrayCollection = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         if(!_loc6_)
         {
            super.commitProperties();
            if(!_loc6_)
            {
               §§push(Boolean(this._featureData));
               if(!(_loc6_ && Boolean(_loc2_)))
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(_temp_3)
                  {
                     if(!(_loc6_ && Boolean(_loc3_)))
                     {
                        §§pop();
                        if(!(_loc6_ && Boolean(this)))
                        {
                           addr0081:
                           §§push(this._isDirty);
                           if(_loc7_ || Boolean(_loc2_))
                           {
                              addr0080:
                              §§push(§§pop());
                           }
                           if(§§pop())
                           {
                              if(!_loc6_)
                              {
                                 this.title = this._featureData.title;
                                 if(!(_loc6_ && Boolean(_loc1_)))
                                 {
                                    addr00a4:
                                    this.flavorText.text = this._featureData.flavourText;
                                    if(!(_loc6_ && Boolean(_loc3_)))
                                    {
                                       addr00bf:
                                       this._maxPage = Math.ceil(this._featureData.numberOfSteps / 3);
                                    }
                                 }
                                 addr00d3:
                                 _loc1_ = new ArrayCollection();
                                 if(!(_loc6_ && Boolean(_loc2_)))
                                 {
                                    §§push(this._page);
                                    if(_loc7_)
                                    {
                                       §§push(3);
                                       if(!(_loc6_ && Boolean(this)))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc7_)
                                          {
                                             §§push(§§pop() - 3);
                                             if(!(_loc6_ && Boolean(_loc2_)))
                                             {
                                                §§push(§§pop());
                                                if(!_loc6_)
                                                {
                                                   addr0122:
                                                   _loc2_ = §§pop();
                                                   if(!_loc6_)
                                                   {
                                                      §§push(_loc2_);
                                                      if(!_loc6_)
                                                      {
                                                         §§push(2);
                                                         if(!(_loc6_ && Boolean(this)))
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc7_ || Boolean(_loc1_))
                                                            {
                                                               addr015e:
                                                               §§push(§§pop());
                                                               if(!_loc6_)
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  if(_loc7_)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr017a:
                                                                        addr0173:
                                                                        if(§§pop() > this._featureData.numberOfSteps - 1)
                                                                        {
                                                                           if(!(_loc6_ && Boolean(this)))
                                                                           {
                                                                              addr018d:
                                                                              addr019c:
                                                                              §§push(this._featureData.numberOfSteps);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 addr019a:
                                                                                 addr019b:
                                                                                 §§push(int(§§pop() - 1));
                                                                              }
                                                                              _loc3_ = §§pop();
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_);
                                                                           if(!_loc7_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(_loc3_);
                                                                           if(_loc7_)
                                                                           {
                                                                              if(§§pop() > §§pop())
                                                                              {
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    if(_loc1_.length < 3)
                                                                                    {
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          §§push(3);
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             §§push(int(§§pop() - _loc1_.length));
                                                                                             if(!(_loc6_ && Boolean(_loc1_)))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             addr022c:
                                                                                             _loc5_ = §§pop();
                                                                                             if(!(_loc6_ && Boolean(this)))
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc5_);
                                                                                                   §§goto(addr0278);
                                                                                                }
                                                                                                addr0276:
                                                                                             }
                                                                                             §§goto(addr029a);
                                                                                          }
                                                                                          addr0278:
                                                                                          §§goto(addr028c);
                                                                                       }
                                                                                       §§goto(addr0276);
                                                                                    }
                                                                                 }
                                                                                 addr028c:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    addr027a:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop() > §§pop())
                                                                                       {
                                                                                          if(_loc7_ || Boolean(_loc1_))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          _loc1_.addItem(new FeatureScreenStepDataVo(null,null,null,null,true));
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          _loc5_++;
                                                                                          if(!(_loc6_ && Boolean(this)))
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr02a0);
                                                                              }
                                                                              else
                                                                              {
                                                                                 _loc1_.addItem(this._featureData.stepData[_loc2_]);
                                                                                 if(!(_loc6_ && Boolean(_loc2_)))
                                                                                 {
                                                                                    _loc2_++;
                                                                                    if(!(_loc6_ && Boolean(this)))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr02a0);
                                                                           }
                                                                           §§goto(addr027a);
                                                                        }
                                                                        _loc4_ = §§pop();
                                                                        if(!(_loc6_ && Boolean(this)))
                                                                        {
                                                                           §§push(1);
                                                                           if(_loc7_)
                                                                           {
                                                                              §§goto(addr022c);
                                                                           }
                                                                           §§goto(addr0278);
                                                                        }
                                                                        addr02a0:
                                                                        this.featureList.dataProvider = _loc1_;
                                                                        if(!_loc6_)
                                                                        {
                                                                           addr029a:
                                                                           this.checkScroller();
                                                                        }
                                                                        return;
                                                                        addr01d2:
                                                                     }
                                                                     §§goto(addr019a);
                                                                  }
                                                                  §§goto(addr01d2);
                                                               }
                                                               §§goto(addr019a);
                                                            }
                                                            §§goto(addr019b);
                                                         }
                                                         §§goto(addr017a);
                                                      }
                                                      §§goto(addr0173);
                                                   }
                                                   §§goto(addr018d);
                                                }
                                                §§goto(addr019c);
                                             }
                                             §§goto(addr015e);
                                          }
                                          §§goto(addr019b);
                                       }
                                       §§goto(addr017a);
                                    }
                                    §§goto(addr0122);
                                 }
                                 §§goto(addr018d);
                              }
                              §§goto(addr00bf);
                           }
                           §§goto(addr02a0);
                        }
                        §§goto(addr00a4);
                     }
                  }
                  §§goto(addr0081);
               }
               §§goto(addr0080);
            }
         }
         §§goto(addr00d3);
      }
      
      public function set data(param1:FeatureScreenVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(!RandomUtilities.isEqual(param1,this._featureData))
            {
               if(_loc3_)
               {
                  addr0036:
                  this._isDirty = true;
                  if(!_loc2_)
                  {
                     addr0041:
                     this._featureData = param1;
                     if(_loc3_ || Boolean(param1))
                     {
                        invalidateProperties();
                     }
                  }
                  §§goto(addr0058);
               }
               §§goto(addr0041);
            }
            addr0058:
            return;
         }
         §§goto(addr0036);
      }
      
      private function scrollPrev() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            var _loc1_:* = this;
            §§push(_loc1_._page);
            if(!_loc4_)
            {
               §§push(§§pop() - 1);
            }
            var _loc2_:* = §§pop();
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_._page = _loc2_;
            }
            if(_loc3_)
            {
               addr0056:
               if(this._page <= 0)
               {
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     this._page = 1;
                     if(_loc3_ || _loc3_)
                     {
                        addr0080:
                        invalidateProperties();
                     }
                     §§goto(addr0085);
                  }
               }
               §§goto(addr0080);
            }
            addr0085:
            return;
         }
         §§goto(addr0056);
      }
      
      private function scrollNext() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            var _loc1_:* = this;
            §§push(_loc1_._page);
            if(!(_loc4_ && Boolean(this)))
            {
               §§push(§§pop() + 1);
            }
            var _loc2_:* = §§pop();
            if(!(_loc4_ && Boolean(_loc1_)))
            {
               _loc1_._page = _loc2_;
            }
            if(!_loc4_)
            {
               addr0057:
               if(this._page > this._maxPage)
               {
                  if(!(_loc4_ && Boolean(this)))
                  {
                     §§goto(addr007e);
                  }
               }
               §§goto(addr0093);
            }
            addr007e:
            this._page = this._maxPage;
            if(_loc3_ || _loc3_)
            {
               addr0093:
               invalidateProperties();
            }
            return;
         }
         §§goto(addr0057);
      }
      
      private function checkScroller() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §§push(this.scrollLeft);
            if(!_loc2_)
            {
               §§push(this.scrollLeft);
               if(!_loc2_)
               {
                  §§push(false);
                  if(_loc3_ || _loc3_)
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     §§push(_temp_3);
                     if(!(_loc2_ && _loc3_))
                     {
                        var _loc1_:* = §§pop();
                        if(!_loc2_)
                        {
                           §§pop().enabled = §§pop();
                           if(!_loc2_)
                           {
                              §§push(_loc1_);
                              if(!_loc2_)
                              {
                                 if(_loc3_ || Boolean(this))
                                 {
                                    §§pop().visible = §§pop();
                                    if(_loc3_)
                                    {
                                       §§push(this.scrollRight);
                                       if(!_loc2_)
                                       {
                                          §§push(this.scrollRight);
                                          if(_loc3_ || _loc2_)
                                          {
                                             §§push(false);
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                var _temp_8:* = §§pop();
                                                §§push(_temp_8);
                                                §§push(_temp_8);
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   _loc1_ = §§pop();
                                                   if(!(_loc2_ && _loc3_))
                                                   {
                                                      §§pop().enabled = §§pop();
                                                      if(_loc3_ || _loc1_)
                                                      {
                                                         §§push(_loc1_);
                                                         if(!(_loc2_ && Boolean(this)))
                                                         {
                                                            if(_loc3_ || Boolean(this))
                                                            {
                                                               §§pop().visible = §§pop();
                                                               if(!(_loc2_ && Boolean(this)))
                                                               {
                                                                  §§push(this._page);
                                                                  if(!(_loc2_ && _loc3_))
                                                                  {
                                                                     §§push(1);
                                                                     if(!(_loc2_ && _loc1_))
                                                                     {
                                                                        §§push(§§pop() == §§pop());
                                                                        if(_loc3_ || _loc2_)
                                                                        {
                                                                           var _temp_18:* = §§pop();
                                                                           §§push(_temp_18);
                                                                           §§push(_temp_18);
                                                                           if(_loc3_ || _loc2_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    §§pop();
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       §§push(this._maxPage);
                                                                                       if(_loc3_ || Boolean(this))
                                                                                       {
                                                                                          §§push(this._page);
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             §§push(§§pop() == §§pop());
                                                                                             if(_loc3_ || _loc2_)
                                                                                             {
                                                                                                §§push(!§§pop());
                                                                                                if(_loc3_ || _loc1_)
                                                                                                {
                                                                                                   addr017d:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         addr0191:
                                                                                                         §§push(this.scrollRight);
                                                                                                         this.scrollRight.enabled = _loc1_ = true;
                                                                                                         addr0197:
                                                                                                         §§pop().visible = _loc1_;
                                                                                                         addr0195:
                                                                                                         addr0194:
                                                                                                         if(!(_loc2_ && _loc3_))
                                                                                                         {
                                                                                                            addr01a6:
                                                                                                            §§push(this._page);
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               §§push(this._maxPage);
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  addr01b8:
                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                                  if(_loc3_ || Boolean(this))
                                                                                                                  {
                                                                                                                     var _temp_25:* = §§pop();
                                                                                                                     addr01c7:
                                                                                                                     §§push(_temp_25);
                                                                                                                     if(_temp_25)
                                                                                                                     {
                                                                                                                        if(!(_loc2_ && _loc3_))
                                                                                                                        {
                                                                                                                           §§goto(addr01d8);
                                                                                                                        }
                                                                                                                        §§goto(addr01fa);
                                                                                                                     }
                                                                                                                     §§goto(addr0208);
                                                                                                                  }
                                                                                                                  addr01d8:
                                                                                                                  §§pop();
                                                                                                                  if(_loc3_ || _loc3_)
                                                                                                                  {
                                                                                                                     addr0208:
                                                                                                                     addr01ec:
                                                                                                                     addr01ea:
                                                                                                                     addr01e6:
                                                                                                                     §§push(this._page == 1);
                                                                                                                     if(_loc3_ || Boolean(this))
                                                                                                                     {
                                                                                                                        addr01fa:
                                                                                                                        §§push(!§§pop());
                                                                                                                     }
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(!(_loc2_ && _loc2_))
                                                                                                                        {
                                                                                                                           addr0224:
                                                                                                                           §§push(this.scrollLeft);
                                                                                                                           this.scrollLeft.enabled = _loc1_ = true;
                                                                                                                           addr022a:
                                                                                                                           §§pop().visible = _loc1_;
                                                                                                                           addr0228:
                                                                                                                           addr0227:
                                                                                                                           if(!_loc2_)
                                                                                                                           {
                                                                                                                              addr0231:
                                                                                                                              this.setPages();
                                                                                                                           }
                                                                                                                           addr0223:
                                                                                                                           addr0222:
                                                                                                                           addr0221:
                                                                                                                           addr021d:
                                                                                                                           addr0219:
                                                                                                                        }
                                                                                                                        §§goto(addr0237);
                                                                                                                     }
                                                                                                                     §§goto(addr0231);
                                                                                                                  }
                                                                                                                  §§goto(addr0237);
                                                                                                               }
                                                                                                               §§goto(addr01ec);
                                                                                                            }
                                                                                                            §§goto(addr01ea);
                                                                                                         }
                                                                                                         addr0237:
                                                                                                         return;
                                                                                                         addr0190:
                                                                                                         addr018f:
                                                                                                         addr018e:
                                                                                                         addr018a:
                                                                                                      }
                                                                                                      §§goto(addr01e6);
                                                                                                   }
                                                                                                   §§goto(addr01a6);
                                                                                                }
                                                                                                §§goto(addr01d8);
                                                                                             }
                                                                                             §§goto(addr017d);
                                                                                          }
                                                                                          §§goto(addr01b8);
                                                                                       }
                                                                                       §§goto(addr01ea);
                                                                                    }
                                                                                    §§goto(addr0237);
                                                                                 }
                                                                                 §§goto(addr0208);
                                                                              }
                                                                              §§goto(addr017d);
                                                                           }
                                                                           §§goto(addr01c7);
                                                                        }
                                                                        §§goto(addr0208);
                                                                     }
                                                                     §§goto(addr01ec);
                                                                  }
                                                                  §§goto(addr01ea);
                                                               }
                                                               §§goto(addr01a6);
                                                            }
                                                            §§goto(addr0197);
                                                         }
                                                         §§goto(addr0195);
                                                      }
                                                      §§goto(addr0194);
                                                   }
                                                   §§goto(addr0191);
                                                }
                                                §§goto(addr0190);
                                             }
                                             §§goto(addr018f);
                                          }
                                          §§goto(addr018e);
                                       }
                                       §§goto(addr018a);
                                    }
                                    §§goto(addr0237);
                                 }
                                 §§goto(addr022a);
                              }
                              §§goto(addr0228);
                           }
                           §§goto(addr0227);
                        }
                        §§goto(addr0224);
                     }
                     §§goto(addr0223);
                  }
                  §§goto(addr0222);
               }
               §§goto(addr0221);
            }
            §§goto(addr021d);
         }
         §§goto(addr0219);
      }
      
      private function setPages() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:* = "";
         var _loc2_:int = 1;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               break;
            }
            while(true)
            {
               §§push(this._maxPage);
               if(_loc3_)
               {
                  if(§§pop() > §§pop())
                  {
                     if(!(_loc4_ && Boolean(_loc1_)))
                     {
                        §§push(this.pageLabel);
                        if(_loc3_)
                        {
                           §§pop().text = _loc1_;
                           §§goto(addr01b3);
                        }
                        §§goto(addr01b1);
                     }
                     addr016c:
                     §§push(this.pageLabel);
                     if(_loc3_ || Boolean(this))
                     {
                        §§push(false);
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           §§pop().visible = §§pop();
                           if(_loc4_ && _loc3_)
                           {
                           }
                        }
                        else
                        {
                           addr01b1:
                           §§pop().visible = true;
                           addr01b0:
                           §§goto(addr01b3);
                        }
                        §§goto(addr01b3);
                     }
                     else
                     {
                        §§goto(addr01b0);
                     }
                  }
                  else
                  {
                     §§push(_loc2_);
                     if(_loc4_ && Boolean(this))
                     {
                        continue;
                     }
                     §§push(this._page);
                     if(!(_loc4_ && _loc3_))
                     {
                        if(§§pop() == §§pop())
                        {
                           if(_loc3_ || Boolean(this))
                           {
                              §§push(_loc1_);
                              if(!(_loc4_ && Boolean(this)))
                              {
                                 §§push("   ");
                                 if(!(_loc4_ && Boolean(_loc2_)))
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!_loc4_)
                                    {
                                       §§push("<FONT Face=\'Arial Black\' Size=\'16\' Color=\'#36696f\' >");
                                       if(!_loc4_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc3_)
                                          {
                                             §§push(_loc2_);
                                             if(!_loc4_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc3_)
                                                {
                                                   §§push("</FONT>");
                                                   if(!(_loc4_ && Boolean(this)))
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         addr00b6:
                                                         _loc1_ = §§pop();
                                                         if(_loc3_)
                                                         {
                                                            addr011a:
                                                            _loc2_++;
                                                            if(_loc3_ || Boolean(this))
                                                            {
                                                               break;
                                                            }
                                                            §§goto(addr015d);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr00d8:
                                                         §§push("<FONT Face=\'Arial Black\' Size=\'12\' Color=\'#666666\'>");
                                                         if(_loc3_ || Boolean(_loc1_))
                                                         {
                                                            addr00e9:
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc3_ || Boolean(_loc1_))
                                                            {
                                                               addr00f8:
                                                               addr00f7:
                                                               §§push(§§pop() + _loc2_);
                                                               if(!(_loc4_ && Boolean(this)))
                                                               {
                                                                  addr0107:
                                                                  addr010a:
                                                                  §§push(§§pop() + "</FONT>");
                                                               }
                                                               _loc1_ = §§pop();
                                                               if(!(_loc4_ && _loc3_))
                                                               {
                                                                  §§goto(addr011a);
                                                               }
                                                               §§goto(addr01b3);
                                                            }
                                                            §§goto(addr0107);
                                                         }
                                                         §§goto(addr010a);
                                                      }
                                                      §§goto(addr01b3);
                                                   }
                                                   §§goto(addr00e9);
                                                }
                                                §§goto(addr00b6);
                                             }
                                             §§goto(addr00f8);
                                          }
                                          §§goto(addr00b6);
                                       }
                                       §§goto(addr00e9);
                                    }
                                    §§goto(addr00d8);
                                 }
                                 else
                                 {
                                    addr00c5:
                                    §§push(§§pop() + §§pop());
                                    if(!_loc4_)
                                    {
                                       §§goto(addr00d8);
                                    }
                                 }
                                 §§goto(addr00f7);
                              }
                              else
                              {
                                 addr00c1:
                                 §§push("   ");
                              }
                              §§goto(addr00c5);
                           }
                           §§goto(addr015d);
                        }
                        else
                        {
                           §§push(_loc1_);
                        }
                        §§goto(addr00c1);
                     }
                     addr0163:
                     if(§§pop() == §§pop())
                     {
                        if(_loc3_)
                        {
                           §§goto(addr016c);
                        }
                        addr01b3:
                        if(!_loc4_)
                        {
                           addr015d:
                           §§push(this._maxPage);
                           break loop0;
                        }
                        return;
                     }
                     §§push(this.pageLabel);
                  }
                  §§goto(addr01b0);
               }
               §§goto(addr0163);
            }
         }
         §§goto(addr0163);
         §§push(1);
      }
      
      private function _FeatureScreenPopup_Array1_c() : Array
      {
         return [this._FeatureScreenPopup_VGroup1_c()];
      }
      
      private function _FeatureScreenPopup_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.width = 740;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.percentHeight = 100;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.gap = 0;
                  if(!_loc3_)
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc2_)
                     {
                        addr006e:
                        _loc1_.verticalAlign = "middle";
                        if(_loc2_)
                        {
                           _loc1_.mxmlContent = [this._FeatureScreenPopup_Group1_c(),this._FeatureScreenPopup_LocaLabel1_i(),this._FeatureScreenPopup_HGroup1_i(),this._FeatureScreenPopup_Group4_c(),this._FeatureScreenPopup_LocaLabel2_i()];
                           addr0079:
                           if(!(_loc3_ && _loc2_))
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc2_ || Boolean(this))
                                 {
                                    addr00c9:
                                    _loc1_.document = this;
                                 }
                              }
                              §§goto(addr00cd);
                           }
                           §§goto(addr00c9);
                        }
                        §§goto(addr00cd);
                     }
                  }
                  §§goto(addr00c9);
               }
               §§goto(addr0079);
            }
            addr00cd:
            return _loc1_;
         }
         §§goto(addr006e);
      }
      
      private function _FeatureScreenPopup_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.width = 700;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.height = 30;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr006c:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0070);
               }
               §§goto(addr006c);
            }
         }
         addr0070:
         return _loc1_;
      }
      
      private function _FeatureScreenPopup_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.percentWidth = 90;
            if(_loc3_)
            {
               _loc1_.maxHeight = 32;
               if(!_loc2_)
               {
                  addr0033:
                  _loc1_.minHeight = 20;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.styleName = "flavorText";
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.text = "";
                        if(_loc3_)
                        {
                           _loc1_.id = "flavorText";
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              if(!_loc1_.document)
                              {
                                 if(!_loc2_)
                                 {
                                    addr009a:
                                    _loc1_.document = this;
                                    if(_loc3_)
                                    {
                                       §§goto(addr00a3);
                                    }
                                 }
                                 §§goto(addr00ad);
                              }
                           }
                           addr00a3:
                           this.flavorText = _loc1_;
                           if(!_loc2_)
                           {
                              addr00ad:
                              BindingManager.executeBindings(this,"flavorText",this.flavorText);
                           }
                        }
                        §§goto(addr00ba);
                     }
                     §§goto(addr00a3);
                  }
                  §§goto(addr009a);
               }
               §§goto(addr00a3);
            }
            §§goto(addr0033);
         }
         addr00ba:
         return _loc1_;
      }
      
      private function _FeatureScreenPopup_HGroup1_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.width = 740;
            if(!_loc3_)
            {
               _loc1_.gap = -8;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.horizontalAlign = "center";
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.mxmlContent = [this._FeatureScreenPopup_Group2_i(),this._FeatureScreenPopup_HGroup2_i(),this._FeatureScreenPopup_Group3_i()];
                     addr004d:
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc1_.id = "itemListGroup";
                        if(_loc2_)
                        {
                           addr008a:
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || Boolean(this))
                              {
                                 addr009e:
                                 _loc1_.document = this;
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    §§goto(addr00bb);
                                 }
                              }
                              §§goto(addr00cd);
                           }
                        }
                        addr00bb:
                        this.itemListGroup = _loc1_;
                        if(!(_loc3_ && _loc3_))
                        {
                           addr00cd:
                           BindingManager.executeBindings(this,"itemListGroup",this.itemListGroup);
                        }
                        return _loc1_;
                     }
                     §§goto(addr009e);
                  }
                  §§goto(addr008a);
               }
               §§goto(addr00cd);
            }
            §§goto(addr004d);
         }
         §§goto(addr009e);
      }
      
      private function _FeatureScreenPopup_Group2_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.width = 50;
            if(!_loc3_)
            {
               _loc1_.mxmlContent = [this._FeatureScreenPopup_DynamicImageButton1_i()];
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0054:
                  _loc1_.id = "scrollerLeft";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(this))
                        {
                           addr0080:
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              §§goto(addr0089);
                           }
                           §§goto(addr0093);
                        }
                     }
                     addr0089:
                     this.scrollerLeft = _loc1_;
                     if(_loc2_)
                     {
                        addr0093:
                        BindingManager.executeBindings(this,"scrollerLeft",this.scrollerLeft);
                     }
                     §§goto(addr00a0);
                  }
               }
               addr00a0:
               return _loc1_;
            }
            §§goto(addr0080);
         }
         §§goto(addr0054);
      }
      
      private function _FeatureScreenPopup_DynamicImageButton1_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.styleName = "listLeft";
            if(!_loc2_)
            {
               _loc1_.right = 0;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.top = 100;
                  if(!_loc2_)
                  {
                     _loc1_.addEventListener("click",this.__scrollLeft_click);
                     addr0051:
                     if(!(_loc2_ && _loc3_))
                     {
                        §§goto(addr0073);
                     }
                     §§goto(addr00b7);
                  }
                  addr0073:
                  _loc1_.id = "scrollLeft";
                  if(!(_loc2_ && Boolean(this)))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           _loc1_.document = this;
                           if(_loc3_ || Boolean(this))
                           {
                              addr00b7:
                              this.scrollLeft = _loc1_;
                              if(_loc3_)
                              {
                                 addr00c1:
                                 BindingManager.executeBindings(this,"scrollLeft",this.scrollLeft);
                              }
                           }
                           §§goto(addr00ce);
                        }
                     }
                     §§goto(addr00b7);
                  }
                  addr00ce:
                  return _loc1_;
               }
               §§goto(addr0051);
            }
            §§goto(addr00c1);
         }
         §§goto(addr0051);
      }
      
      public function __scrollLeft_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this.scrollPrev();
         }
      }
      
      private function _FeatureScreenPopup_HGroup2_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.minWidth = 690;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.horizontalAlign = "center";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.mxmlContent = [this._FeatureScreenPopup_List1_i()];
                  if(_loc2_)
                  {
                     §§goto(addr0063);
                  }
                  §§goto(addr008e);
               }
               §§goto(addr0076);
            }
            §§goto(addr008e);
         }
         addr0063:
         _loc1_.id = "listGroup";
         if(_loc2_ || _loc2_)
         {
            addr0076:
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  addr008e:
                  _loc1_.document = this;
                  if(_loc2_)
                  {
                     addr0097:
                     this.listGroup = _loc1_;
                     if(_loc2_ || Boolean(this))
                     {
                        addr00a9:
                        BindingManager.executeBindings(this,"listGroup",this.listGroup);
                     }
                  }
                  §§goto(addr00b6);
               }
               §§goto(addr00a9);
            }
            §§goto(addr0097);
         }
         addr00b6:
         return _loc1_;
      }
      
      private function _FeatureScreenPopup_List1_i() : List
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:List = new List();
         if(_loc3_)
         {
            _loc1_.itemRenderer = this._FeatureScreenPopup_ClassFactory1_c();
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.layout = this._FeatureScreenPopup_HorizontalLayout1_c();
               if(_loc3_)
               {
                  _loc1_.setStyle("skinClass",FeatureListSkin);
                  if(_loc3_)
                  {
                     _loc1_.id = "featureList";
                     if(!_loc2_)
                     {
                        addr006c:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr0085:
                              _loc1_.document = this;
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr0096:
                                 this.featureList = _loc1_;
                                 if(!_loc2_)
                                 {
                                    BindingManager.executeBindings(this,"featureList",this.featureList);
                                 }
                              }
                           }
                           §§goto(addr00ad);
                        }
                        §§goto(addr0096);
                     }
                     §§goto(addr00ad);
                  }
                  §§goto(addr0085);
               }
               addr00ad:
               return _loc1_;
            }
            §§goto(addr0085);
         }
         §§goto(addr006c);
      }
      
      private function _FeatureScreenPopup_ClassFactory1_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.generator = FeatureScreenItemRenderer;
         }
         return _loc1_;
      }
      
      private function _FeatureScreenPopup_HorizontalLayout1_c() : HorizontalLayout
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         if(_loc3_)
         {
            _loc1_.verticalAlign = "middle";
            if(_loc3_ || _loc2_)
            {
               _loc1_.requestedMaxColumnCount = 3;
               if(_loc3_)
               {
                  _loc1_.clipAndEnableScrolling = true;
                  if(!_loc2_)
                  {
                     addr0065:
                     _loc1_.useVirtualLayout = false;
                     if(_loc3_ || Boolean(this))
                     {
                        _loc1_.requestedMinColumnCount = 1;
                        if(_loc3_)
                        {
                           addr0083:
                           _loc1_.gap = -10;
                        }
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0083);
         }
         §§goto(addr0065);
      }
      
      private function _FeatureScreenPopup_Group3_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.width = 53;
            if(_loc3_ || _loc3_)
            {
               _loc1_.mxmlContent = [this._FeatureScreenPopup_DynamicImageButton2_i()];
               if(_loc3_ || _loc2_)
               {
                  _loc1_.id = "scrollerRight";
                  if(_loc3_ || _loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           addr008c:
                           _loc1_.document = this;
                           if(_loc3_ || _loc2_)
                           {
                              §§goto(addr009d);
                           }
                           §§goto(addr00a7);
                        }
                     }
                     §§goto(addr009d);
                  }
                  §§goto(addr00a7);
               }
               §§goto(addr008c);
            }
            addr009d:
            this.scrollerRight = _loc1_;
            if(!_loc2_)
            {
               addr00a7:
               BindingManager.executeBindings(this,"scrollerRight",this.scrollerRight);
            }
            §§goto(addr00b4);
         }
         addr00b4:
         return _loc1_;
      }
      
      private function _FeatureScreenPopup_DynamicImageButton2_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.styleName = "listRight";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.left = 0;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.top = 100;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr006a:
                     _loc1_.addEventListener("click",this.__scrollRight_click);
                     if(!_loc3_)
                     {
                        _loc1_.id = "scrollRight";
                        if(_loc2_ || _loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 _loc1_.document = this;
                                 if(!_loc3_)
                                 {
                                    addr00af:
                                    this.scrollRight = _loc1_;
                                    if(!_loc3_)
                                    {
                                       BindingManager.executeBindings(this,"scrollRight",this.scrollRight);
                                    }
                                 }
                                 §§goto(addr00c6);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr00af);
               }
            }
            §§goto(addr006a);
         }
         addr00c6:
         return _loc1_;
      }
      
      public function __scrollRight_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this.scrollNext();
         }
      }
      
      private function _FeatureScreenPopup_Group4_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.height = 10;
            if(!(_loc2_ && Boolean(this)))
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc2_)
                  {
                     addr0069:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0069);
      }
      
      private function _FeatureScreenPopup_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.id = "pageLabel";
            if(_loc3_ || Boolean(this))
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr004c:
                     _loc1_.document = this;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        §§goto(addr006c);
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr006c);
            }
            §§goto(addr004c);
         }
         addr006c:
         this.pageLabel = _loc1_;
         if(_loc3_ || Boolean(_loc1_))
         {
            addr007e:
            BindingManager.executeBindings(this,"pageLabel",this.pageLabel);
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get featureList() : List
      {
         return this._377211724featureList;
      }
      
      public function set featureList(param1:List) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._377211724featureList;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._377211724featureList = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"featureList",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr0076);
            }
         }
         addr0085:
      }
      
      [Bindable(event="propertyChange")]
      public function get flavorText() : LocaLabel
      {
         return this._1684755691flavorText;
      }
      
      public function set flavorText(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1684755691flavorText;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._1684755691flavorText = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr0079:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavorText",_loc2_,param1));
                        }
                     }
                     §§goto(addr0088);
                  }
               }
               §§goto(addr0079);
            }
         }
         addr0088:
      }
      
      [Bindable(event="propertyChange")]
      public function get itemListGroup() : HGroup
      {
         return this._1055224494itemListGroup;
      }
      
      public function set itemListGroup(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1055224494itemListGroup;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  addr003c:
                  this._1055224494itemListGroup = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemListGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr003c);
      }
      
      [Bindable(event="propertyChange")]
      public function get listGroup() : HGroup
      {
         return this._1246295935listGroup;
      }
      
      public function set listGroup(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1246295935listGroup;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._1246295935listGroup = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0066:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr007d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"listGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008c);
               }
               §§goto(addr007d);
            }
            addr008c:
            return;
         }
         §§goto(addr0066);
      }
      
      [Bindable(event="propertyChange")]
      public function get pageLabel() : LocaLabel
      {
         return this._865758629pageLabel;
      }
      
      public function set pageLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._865758629pageLabel;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._865758629pageLabel = param1;
                  if(_loc3_)
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr005f);
            }
            addr007d:
            return;
         }
         §§goto(addr005f);
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollLeft() : DynamicImageButton
      {
         return this._66047092scrollLeft;
      }
      
      public function set scrollLeft(param1:DynamicImageButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._66047092scrollLeft;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._66047092scrollLeft = param1;
                  addr003c:
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollLeft",_loc2_,param1));
                        }
                     }
                     §§goto(addr007b);
                  }
               }
               §§goto(addr006c);
            }
            addr007b:
            return;
         }
         §§goto(addr003c);
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollRight() : DynamicImageButton
      {
         return this._2053120847scrollRight;
      }
      
      public function set scrollRight(param1:DynamicImageButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2053120847scrollRight;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._2053120847scrollRight = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr0053:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0063:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollRight",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0072);
               }
               §§goto(addr0063);
            }
            addr0072:
            return;
         }
         §§goto(addr0053);
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollerLeft() : Group
      {
         return this._226305183scrollerLeft;
      }
      
      public function set scrollerLeft(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._226305183scrollerLeft;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._226305183scrollerLeft = param1;
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollerLeft",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0077);
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollerRight() : Group
      {
         return this._1580134914scrollerRight;
      }
      
      public function set scrollerRight(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1580134914scrollerRight;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._1580134914scrollerRight = param1;
                  if(_loc4_)
                  {
                     §§goto(addr0058);
                  }
                  §§goto(addr0067);
               }
               addr0058:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr0067:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollerRight",_loc2_,param1));
                  }
               }
               §§goto(addr0076);
            }
            addr0076:
            return;
         }
         §§goto(addr0067);
      }
   }
}

