package net.bigpoint.cityrama.view.quest.ui.components
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.model.detailViews.QuestGUIProxy;
   import net.bigpoint.cityrama.model.detailViews.vo.QuestDetailViewVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.supportClasses.ItemRenderer;
   
   public class QuestSideItemRenderer extends ItemRenderer implements IStateClient2
   {
      
      public static const SHOW_QUEST_INFOLAYER:String = "SHOW_QUEST_INFOLAYER";
      
      public static const QUEST_SIDE_ITEM_CLICKED:String = "QUEST_SIDE_ITEM_CLICKED";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         SHOW_QUEST_INFOLAYER = "SHOW_QUEST_INFOLAYER";
         if(!_loc2_)
         {
            §§goto(addr002d);
         }
         §§goto(addr0043);
      }
      addr002d:
      
      public static const HIDE_QUEST_INFOLAYER:String = "HIDE_QUEST_INFOLAYER";
      
      if(_loc1_ || _loc2_)
      {
         addr0043:
         QUEST_SIDE_ITEM_CLICKED = "QUEST_SIDE_ITEM_CLICKED";
      }
      
      private var _3226745icon:BriskImageDynaLib;
      
      private var _2131590956itemGroup:Group;
      
      private var _1364427554newQuest:BriskImageDynaLib;
      
      private var _1340618197prefixIcon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:QuestDetailViewVo;
      
      private var _dataDirty:Boolean;
      
      private var _intervalID:uint;
      
      private var _tween:TweenMax;
      
      private const PREFIX_PRODUCTION_OFFSET:Point;
      
      private const PREFIX_SELLING_OFFSET:Point;
      
      public function QuestSideItemRenderer()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            this.PREFIX_PRODUCTION_OFFSET = new Point(24,-2.5);
            if(_loc1_ || Boolean(this))
            {
               this.PREFIX_SELLING_OFFSET = new Point(30,0);
               if(_loc1_ || _loc2_)
               {
                  super();
                  if(!(_loc2_ && _loc2_))
                  {
                     mx_internal::_document = this;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        this.autoDrawBackground = false;
                        if(!_loc2_)
                        {
                           this.minWidth = 70;
                           if(!(_loc2_ && _loc1_))
                           {
                              this.minHeight = 60;
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr00b5:
                                 this.mxmlContent = [this._QuestSideItemRenderer_Group1_i()];
                                 if(_loc1_ || _loc1_)
                                 {
                                    addr00cd:
                                    this.currentState = "normal";
                                    if(!_loc2_)
                                    {
                                       this.addEventListener("click",this.___QuestSideItemRenderer_ItemRenderer1_click);
                                       if(!_loc2_)
                                       {
                                          addr00ea:
                                          this.addEventListener("rollOver",this.___QuestSideItemRenderer_ItemRenderer1_rollOver);
                                          if(!_loc2_)
                                          {
                                             §§goto(addr00fb);
                                          }
                                          §§goto(addr0114);
                                       }
                                       §§goto(addr00fb);
                                    }
                                 }
                                 §§goto(addr00ea);
                              }
                           }
                           §§goto(addr00cd);
                        }
                        §§goto(addr00ea);
                     }
                     addr00fb:
                     this.addEventListener("rollOut",this.___QuestSideItemRenderer_ItemRenderer1_rollOut);
                     if(!(_loc2_ && _loc2_))
                     {
                        states = [new State({
                           "name":"normal",
                           "overrides":[]
                        }),new State({
                           "name":"disabled",
                           "overrides":[]
                        }),new State({
                           "name":"hovered",
                           "overrides":[]
                        }),new State({
                           "name":"down",
                           "overrides":[]
                        })];
                        addr0114:
                     }
                     §§goto(addr0168);
                  }
                  §§goto(addr0114);
               }
               addr0168:
               return;
            }
            §§goto(addr0114);
         }
         §§goto(addr00b5);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || _loc3_)
                  {
                     return;
                  }
               }
               else
               {
                  addr004d:
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         §§goto(addr004d);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super.initialize();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            super.commitProperties();
            if(_loc3_)
            {
               §§push(this._dataDirty);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr0043:
                        this._dataDirty = false;
                        if(_loc3_)
                        {
                           this.killTween();
                           if(_loc3_ || _loc2_)
                           {
                              addr0060:
                              §§push(this.prefixIcon);
                              if(!(_loc2_ && _loc1_))
                              {
                                 §§push(false);
                                 if(_loc3_)
                                 {
                                    §§pop().visible = §§pop();
                                    if(_loc3_)
                                    {
                                       §§push(this.prefixIcon);
                                       if(!_loc2_)
                                       {
                                          §§push(false);
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             addr0095:
                                             §§pop().includeInLayout = §§pop();
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                var _temp_9:* = this.newQuest;
                                                var _loc1_:*;
                                                this.newQuest.visible = _loc1_ = this._data.isNewQuest;
                                                _temp_9.includeInLayout = _loc1_;
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   §§push(this._data);
                                                   if(!(_loc2_ && Boolean(this)))
                                                   {
                                                      §§push(§§pop().isQuestComplete);
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         addr00ea:
                                                         if(§§pop())
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               §§push(this.icon);
                                                               if(!(_loc2_ && _loc2_))
                                                               {
                                                                  §§push("gui_ui_questSide");
                                                                  if(_loc3_)
                                                                  {
                                                                     §§pop().dynaLibName = §§pop();
                                                                     if(_loc3_)
                                                                     {
                                                                        addr0113:
                                                                        §§push(this.icon);
                                                                        if(_loc3_ || Boolean(this))
                                                                        {
                                                                           §§push("quest51006");
                                                                           if(!(_loc2_ && Boolean(this)))
                                                                           {
                                                                              §§pop().dynaBmpSourceName = §§pop();
                                                                              if(_loc2_)
                                                                              {
                                                                                 addr01f9:
                                                                                 §§push(this._data);
                                                                                 if(_loc3_ || Boolean(this))
                                                                                 {
                                                                                    §§push(§§pop().questGfxId);
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       addr0212:
                                                                                       §§push(QuestGUIProxy.GFXID_PRODUCTION_TASK);
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          §§goto(addr021d);
                                                                                       }
                                                                                       §§goto(addr0293);
                                                                                    }
                                                                                    §§goto(addr028d);
                                                                                 }
                                                                                 §§goto(addr028a);
                                                                              }
                                                                              §§goto(addr03f0);
                                                                           }
                                                                           §§goto(addr0330);
                                                                        }
                                                                        §§goto(addr03be);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr0197:
                                                                        §§push(this._data);
                                                                        if(!(_loc2_ && _loc1_))
                                                                        {
                                                                           §§push(§§pop().questGfxId);
                                                                           if(!(_loc2_ && Boolean(this)))
                                                                           {
                                                                              §§push(QuestGUIProxy.GFXID_SELLING_TASK);
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§push(§§pop() == §§pop());
                                                                                 if(_loc3_ || _loc2_)
                                                                                 {
                                                                                    addr01d1:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          §§push(this.icon);
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             §§push("");
                                                                                             if(!(_loc2_ && _loc1_))
                                                                                             {
                                                                                                §§pop().dynaBmpSourceName = §§pop();
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   §§goto(addr01f9);
                                                                                                }
                                                                                                §§goto(addr02c2);
                                                                                             }
                                                                                             §§goto(addr03e9);
                                                                                          }
                                                                                          §§goto(addr0348);
                                                                                       }
                                                                                       §§goto(addr0464);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(this.icon);
                                                                                       if(!(_loc2_ && _loc2_))
                                                                                       {
                                                                                          §§goto(addr03be);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr03d9);
                                                                                 }
                                                                                 §§goto(addr044d);
                                                                              }
                                                                              §§goto(addr0293);
                                                                           }
                                                                           §§goto(addr0212);
                                                                        }
                                                                     }
                                                                     §§goto(addr0519);
                                                                  }
                                                                  §§goto(addr0330);
                                                               }
                                                               §§goto(addr03d9);
                                                            }
                                                            §§goto(addr01f9);
                                                         }
                                                         else
                                                         {
                                                            §§push(this._data);
                                                            if(_loc3_)
                                                            {
                                                               addr0149:
                                                               §§push(§§pop().questGfxId);
                                                               if(_loc3_)
                                                               {
                                                                  §§push(QuestGUIProxy.GFXID_PRODUCTION_TASK);
                                                                  if(_loc3_ || _loc3_)
                                                                  {
                                                                     §§push(§§pop() == §§pop());
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                        var _temp_50:* = §§pop();
                                                                        §§push(_temp_50);
                                                                        §§push(_temp_50);
                                                                        if(!(_loc2_ && _loc3_))
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              if(!_loc2_)
                                                                              {
                                                                                 §§pop();
                                                                                 if(!(_loc2_ && _loc2_))
                                                                                 {
                                                                                    §§goto(addr0197);
                                                                                 }
                                                                                 §§goto(addr03f0);
                                                                              }
                                                                              §§goto(addr04f1);
                                                                           }
                                                                           §§goto(addr01d1);
                                                                        }
                                                                        §§goto(addr041d);
                                                                     }
                                                                     §§goto(addr0401);
                                                                  }
                                                                  addr021d:
                                                                  if(§§pop() == §§pop())
                                                                  {
                                                                     if(!(_loc2_ && _loc2_))
                                                                     {
                                                                        §§push(this.prefixIcon);
                                                                        if(_loc3_ || _loc2_)
                                                                        {
                                                                           §§pop().left = this.PREFIX_PRODUCTION_OFFSET.x;
                                                                           if(!_loc2_)
                                                                           {
                                                                              §§push(this.prefixIcon);
                                                                              if(!_loc2_)
                                                                              {
                                                                                 §§goto(addr0255);
                                                                              }
                                                                              §§goto(addr02e9);
                                                                           }
                                                                           §§goto(addr0434);
                                                                        }
                                                                        addr0255:
                                                                        §§pop().top = this.PREFIX_PRODUCTION_OFFSET.y;
                                                                        if(!(_loc2_ && _loc2_))
                                                                        {
                                                                           addr02d8:
                                                                           §§push(this.prefixIcon);
                                                                           if(_loc3_ || _loc3_)
                                                                           {
                                                                              addr02e9:
                                                                              §§push(true);
                                                                              if(_loc3_ || Boolean(this))
                                                                              {
                                                                                 addr02f7:
                                                                                 §§pop().visible = §§pop();
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    §§push(this.prefixIcon);
                                                                                    if(_loc3_ || _loc2_)
                                                                                    {
                                                                                       addr0310:
                                                                                       §§pop().includeInLayout = true;
                                                                                       addr030f:
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          addr0317:
                                                                                          §§push(this.icon);
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             §§push("gui_popups_smallGoodIcons");
                                                                                             if(!(_loc2_ && Boolean(this)))
                                                                                             {
                                                                                                addr0330:
                                                                                                §§pop().dynaLibName = §§pop();
                                                                                                if(!(_loc2_ && _loc3_))
                                                                                                {
                                                                                                   addr033f:
                                                                                                   §§push(this.icon);
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      addr0348:
                                                                                                      §§push("small_");
                                                                                                      if(!(_loc2_ && _loc3_))
                                                                                                      {
                                                                                                         §§push(this._data);
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            §§push(§§pop().targetGoodGfxId);
                                                                                                            if(!(_loc2_ && Boolean(this)))
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(_loc3_ || _loc1_)
                                                                                                               {
                                                                                                                  §§pop().dynaBmpSourceName = §§pop();
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     addr038a:
                                                                                                                     §§push(this.prefixIcon);
                                                                                                                     §§push("quest");
                                                                                                                     if(!(_loc2_ && _loc1_))
                                                                                                                     {
                                                                                                                        §§push(§§pop() + this._data.questGfxId);
                                                                                                                     }
                                                                                                                     §§pop().dynaBmpSourceName = §§pop();
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        §§goto(addr03f0);
                                                                                                                     }
                                                                                                                     §§goto(addr04fb);
                                                                                                                  }
                                                                                                                  §§goto(addr04a3);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr03e9:
                                                                                                                  §§pop().dynaBmpSourceName = §§pop();
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     §§goto(addr03f0);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr0464);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr03e8:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                            }
                                                                                                            §§goto(addr03e9);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr03e5:
                                                                                                            §§push(§§pop().questGfxId);
                                                                                                         }
                                                                                                         §§goto(addr03e8);
                                                                                                      }
                                                                                                      §§goto(addr03e9);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr03be:
                                                                                                      §§push("gui_ui_questSide");
                                                                                                      if(!(_loc2_ && _loc1_))
                                                                                                      {
                                                                                                         §§pop().dynaLibName = §§pop();
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            addr03d9:
                                                                                                            addr03d5:
                                                                                                            §§push(this.icon);
                                                                                                            §§push("quest");
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               addr03e1:
                                                                                                               §§goto(addr03e5);
                                                                                                               §§push(this._data);
                                                                                                            }
                                                                                                            §§goto(addr03e9);
                                                                                                         }
                                                                                                         §§goto(addr04a3);
                                                                                                      }
                                                                                                      §§goto(addr03e1);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr04ca);
                                                                                             }
                                                                                             §§goto(addr03e1);
                                                                                          }
                                                                                          §§goto(addr03d9);
                                                                                       }
                                                                                       §§goto(addr04a3);
                                                                                    }
                                                                                    §§goto(addr038a);
                                                                                 }
                                                                                 §§goto(addr04fb);
                                                                              }
                                                                              §§goto(addr0310);
                                                                           }
                                                                           §§goto(addr038a);
                                                                        }
                                                                        addr03f0:
                                                                        §§push(this._data);
                                                                        if(_loc3_)
                                                                        {
                                                                           §§push(§§pop().isQuestComplete);
                                                                           if(_loc3_)
                                                                           {
                                                                              addr0401:
                                                                              §§push(§§pop());
                                                                              if(!(_loc2_ && _loc3_))
                                                                              {
                                                                                 var _temp_30:* = §§pop();
                                                                                 §§push(_temp_30);
                                                                                 §§push(_temp_30);
                                                                                 if(_loc3_ || _loc2_)
                                                                                 {
                                                                                    addr041d:
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          §§pop();
                                                                                          if(_loc3_ || Boolean(this))
                                                                                          {
                                                                                             addr0434:
                                                                                             §§push(this._data);
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                §§push(§§pop().isNewQuest);
                                                                                                if(_loc3_ || _loc3_)
                                                                                                {
                                                                                                   addr044d:
                                                                                                   §§push(§§pop());
                                                                                                   if(!(_loc2_ && _loc3_))
                                                                                                   {
                                                                                                      addr045b:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            addr0464:
                                                                                                            this._tween = TweenMax.to(this.itemGroup,0.5,{
                                                                                                               "horizontalCenter":5,
                                                                                                               "repeat":int.MAX_VALUE,
                                                                                                               "yoyo":true
                                                                                                            });
                                                                                                            if(!(_loc2_ && _loc2_))
                                                                                                            {
                                                                                                               addr04a3:
                                                                                                               §§push(this._data);
                                                                                                               if(!_loc2_)
                                                                                                               {
                                                                                                                  §§push(§§pop().changed);
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     addr04b4:
                                                                                                                     §§push(§§pop());
                                                                                                                     if(!_loc2_)
                                                                                                                     {
                                                                                                                        addr04ba:
                                                                                                                        var _temp_36:* = §§pop();
                                                                                                                        addr04bb:
                                                                                                                        §§push(_temp_36);
                                                                                                                        if(_temp_36)
                                                                                                                        {
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              if(!_loc2_)
                                                                                                                              {
                                                                                                                                 addr04ca:
                                                                                                                                 §§push(this._data);
                                                                                                                                 if(!_loc2_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr04f2);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0519);
                                                                                                                              }
                                                                                                                              §§goto(addr04fb);
                                                                                                                           }
                                                                                                                           §§goto(addr04f1);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr04f2);
                                                                                                                  }
                                                                                                                  §§goto(addr04f1);
                                                                                                               }
                                                                                                               §§goto(addr0519);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr04ca);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         this.killTween();
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            §§goto(addr04a3);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr0515);
                                                                                                   }
                                                                                                }
                                                                                                addr04f2:
                                                                                             }
                                                                                             §§goto(addr04d3);
                                                                                          }
                                                                                          §§goto(addr04a3);
                                                                                       }
                                                                                       §§goto(addr04b4);
                                                                                    }
                                                                                    §§goto(addr045b);
                                                                                 }
                                                                                 §§goto(addr04bb);
                                                                              }
                                                                              §§goto(addr044d);
                                                                           }
                                                                           §§goto(addr04ba);
                                                                        }
                                                                        §§goto(addr04d3);
                                                                     }
                                                                     §§goto(addr02d8);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(this._data);
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                        addr0293:
                                                                        addr028d:
                                                                        addr028a:
                                                                        if(§§pop().questGfxId == QuestGUIProxy.GFXID_SELLING_TASK)
                                                                        {
                                                                           if(_loc3_ || _loc1_)
                                                                           {
                                                                              §§push(this.prefixIcon);
                                                                              if(_loc3_ || _loc3_)
                                                                              {
                                                                                 addr02b5:
                                                                                 §§pop().left = this.PREFIX_SELLING_OFFSET.x;
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    addr02c2:
                                                                                    §§push(this.prefixIcon);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       §§pop().top = this.PREFIX_SELLING_OFFSET.y;
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          §§goto(addr02d8);
                                                                                       }
                                                                                       §§goto(addr03d5);
                                                                                    }
                                                                                    §§goto(addr02e9);
                                                                                 }
                                                                                 §§goto(addr0317);
                                                                              }
                                                                              §§goto(addr030f);
                                                                           }
                                                                           §§goto(addr0317);
                                                                        }
                                                                        §§goto(addr02d8);
                                                                     }
                                                                  }
                                                                  addr04d3:
                                                                  §§push(§§pop().isNewQuest);
                                                                  if(!(_loc2_ && Boolean(this)))
                                                                  {
                                                                     addr04f1:
                                                                     §§push(!§§pop());
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        addr04fb:
                                                                        this.addEventListener(FlexEvent.UPDATE_COMPLETE,this.showUpdateInfoLayer);
                                                                        if(!(_loc2_ && _loc1_))
                                                                        {
                                                                           addr0519:
                                                                           this._data.changed = false;
                                                                           addr0515:
                                                                        }
                                                                        §§goto(addr051d);
                                                                     }
                                                                     §§goto(addr0515);
                                                                  }
                                                                  §§goto(addr051d);
                                                               }
                                                               §§goto(addr028d);
                                                            }
                                                         }
                                                         §§goto(addr0519);
                                                      }
                                                      §§goto(addr044d);
                                                   }
                                                   §§goto(addr0149);
                                                }
                                             }
                                             §§goto(addr02d8);
                                          }
                                          §§goto(addr02f7);
                                       }
                                       §§goto(addr038a);
                                    }
                                    §§goto(addr033f);
                                 }
                                 §§goto(addr0095);
                              }
                              §§goto(addr02b5);
                           }
                           §§goto(addr0317);
                        }
                        §§goto(addr0113);
                     }
                     §§goto(addr0060);
                  }
                  addr051d:
                  return;
               }
               §§goto(addr00ea);
            }
            §§goto(addr0464);
         }
         §§goto(addr0043);
      }
      
      private function showUpdateInfoLayer(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.removeEventListener(FlexEvent.UPDATE_COMPLETE,this.showUpdateInfoLayer);
            if(!_loc3_)
            {
               dispatchEvent(new Event(SHOW_QUEST_INFOLAYER,true,true));
               if(!(_loc3_ && _loc3_))
               {
                  addr005d:
                  this._intervalID = setTimeout(owner.dispatchEvent,1000,new Event(HIDE_QUEST_INFOLAYER,true,true));
               }
               §§goto(addr007b);
            }
            §§goto(addr005d);
         }
         addr007b:
      }
      
      private function handleMouseOut(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            dispatchEvent(new Event(HIDE_QUEST_INFOLAYER,true,true));
         }
      }
      
      private function handleMouseOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            clearTimeout(this._intervalID);
            if(_loc2_)
            {
               addr0027:
               dispatchEvent(new Event(SHOW_QUEST_INFOLAYER,true,true));
            }
            return;
         }
         §§goto(addr0027);
      }
      
      private function handleClick(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            dispatchEvent(new Event(QUEST_SIDE_ITEM_CLICKED,true,true));
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
               if(!RandomUtilities.isEqual(param1,this._data))
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     this._dataDirty = true;
                     if(_loc3_)
                     {
                        addr0061:
                        this._data = param1 as QuestDetailViewVo;
                        if(!(_loc2_ && _loc3_))
                        {
                           addr0077:
                           invalidateProperties();
                        }
                     }
                  }
                  return;
               }
               §§goto(addr0077);
            }
            §§goto(addr0061);
         }
         §§goto(addr0077);
      }
      
      private function killTween() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this._tween);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr0050:
                     this._tween.kill();
                     addr004c:
                     if(!(_loc1_ && _loc2_))
                     {
                        this._tween = null;
                        if(_loc2_)
                        {
                           this.itemGroup.horizontalCenter = 0;
                        }
                     }
                  }
               }
               return;
            }
            §§goto(addr0050);
         }
         §§goto(addr004c);
      }
      
      override public function get measuredHeight() : Number
      {
         return this.minHeight;
      }
      
      private function _QuestSideItemRenderer_Group1_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.horizontalCenter = 0;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.width = 70;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.height = 60;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.mxmlContent = [this._QuestSideItemRenderer_BriskImageDynaLib1_c(),this._QuestSideItemRenderer_BriskImageDynaLib2_i(),this._QuestSideItemRenderer_BriskImageDynaLib3_i(),this._QuestSideItemRenderer_BriskImageDynaLib4_i()];
                     if(_loc3_ || _loc3_)
                     {
                        addr0094:
                        _loc1_.id = "itemGroup";
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr00a7:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || Boolean(this))
                              {
                                 addr00c6:
                                 _loc1_.document = this;
                                 if(!_loc2_)
                                 {
                                    §§goto(addr00cf);
                                 }
                              }
                              §§goto(addr00d9);
                           }
                           §§goto(addr00cf);
                        }
                        §§goto(addr00c6);
                     }
                  }
                  addr00cf:
                  this.itemGroup = _loc1_;
                  if(!_loc2_)
                  {
                     addr00d9:
                     BindingManager.executeBindings(this,"itemGroup",this.itemGroup);
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0094);
         }
         §§goto(addr00a7);
      }
      
      private function _QuestSideItemRenderer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.dynaBmpSourceName = "questmarker_base";
            if(!_loc3_)
            {
               _loc1_.dynaLibName = "gui_ui_questSide";
               if(_loc2_)
               {
                  _loc1_.verticalCenter = 0;
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.horizontalCenter = 0;
                     addr005c:
                     if(_loc2_ || _loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc3_)
                           {
                              addr008d:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0091);
                     }
                  }
                  §§goto(addr008d);
               }
               addr0091:
               return _loc1_;
            }
            §§goto(addr008d);
         }
         §§goto(addr005c);
      }
      
      private function _QuestSideItemRenderer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.smoothing = true;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.dynaLibName = "gui_ui_questSide";
               if(_loc3_)
               {
                  _loc1_.verticalCenter = 0;
                  if(_loc3_)
                  {
                     §§goto(addr005c);
                  }
                  §§goto(addr0079);
               }
               addr005c:
               _loc1_.horizontalCenter = 0;
               if(!_loc2_)
               {
                  _loc1_.id = "icon";
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0079:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           §§goto(addr0091);
                        }
                     }
                     §§goto(addr009a);
                  }
                  addr0091:
                  _loc1_.document = this;
                  if(!_loc2_)
                  {
                     addr009a:
                     this.icon = _loc1_;
                     if(_loc3_ || _loc2_)
                     {
                        BindingManager.executeBindings(this,"icon",this.icon);
                     }
                  }
                  §§goto(addr00b9);
               }
               addr00b9:
               return _loc1_;
            }
            §§goto(addr0091);
         }
         §§goto(addr009a);
      }
      
      private function _QuestSideItemRenderer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.smoothing = true;
            if(!_loc2_)
            {
               _loc1_.dynaLibName = "gui_ui_questSide";
               if(_loc3_ || _loc2_)
               {
                  _loc1_.id = "prefixIcon";
                  if(_loc3_ || Boolean(this))
                  {
                     addr0063:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              addr008b:
                              this.prefixIcon = _loc1_;
                              if(_loc3_ || _loc2_)
                              {
                                 addr009d:
                                 BindingManager.executeBindings(this,"prefixIcon",this.prefixIcon);
                              }
                              §§goto(addr00aa);
                           }
                           §§goto(addr009d);
                        }
                        §§goto(addr00aa);
                     }
                  }
                  §§goto(addr008b);
               }
               addr00aa:
               return _loc1_;
            }
            §§goto(addr0063);
         }
         §§goto(addr008b);
      }
      
      private function _QuestSideItemRenderer_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.smoothing = true;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "symbol_new_small";
               if(_loc2_ || _loc3_)
               {
                  _loc1_.dynaLibName = "gui_ui_questSide";
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr0061:
                     _loc1_.right = 0;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.top = 0;
                        if(!_loc3_)
                        {
                           _loc1_.includeInLayout = false;
                           if(!(_loc3_ && _loc2_))
                           {
                              _loc1_.visible = false;
                              if(!_loc3_)
                              {
                                 _loc1_.id = "newQuest";
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    addr00b4:
                                    if(!_loc1_.document)
                                    {
                                       if(_loc2_)
                                       {
                                          _loc1_.document = this;
                                          if(_loc2_ || Boolean(this))
                                          {
                                             addr00dc:
                                             this.newQuest = _loc1_;
                                             if(_loc2_)
                                             {
                                                addr00e6:
                                                BindingManager.executeBindings(this,"newQuest",this.newQuest);
                                             }
                                          }
                                          §§goto(addr00f3);
                                       }
                                       §§goto(addr00e6);
                                    }
                                    §§goto(addr00dc);
                                 }
                              }
                              addr00f3:
                              return _loc1_;
                           }
                           §§goto(addr00dc);
                        }
                        §§goto(addr00b4);
                     }
                  }
                  §§goto(addr00dc);
               }
               §§goto(addr00e6);
            }
            §§goto(addr0061);
         }
         §§goto(addr00b4);
      }
      
      public function ___QuestSideItemRenderer_ItemRenderer1_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.handleClick(param1);
         }
      }
      
      public function ___QuestSideItemRenderer_ItemRenderer1_rollOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            this.handleMouseOver(param1);
         }
      }
      
      public function ___QuestSideItemRenderer_ItemRenderer1_rollOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.handleMouseOut(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get icon() : BriskImageDynaLib
      {
         return this._3226745icon;
      }
      
      public function set icon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._3226745icon;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._3226745icon = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     addr0065:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"icon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr0065);
            }
            addr0084:
            return;
         }
         §§goto(addr0075);
      }
      
      [Bindable(event="propertyChange")]
      public function get itemGroup() : Group
      {
         return this._2131590956itemGroup;
      }
      
      public function set itemGroup(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2131590956itemGroup;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._2131590956itemGroup = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr0081:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0081);
      }
      
      [Bindable(event="propertyChange")]
      public function get newQuest() : BriskImageDynaLib
      {
         return this._1364427554newQuest;
      }
      
      public function set newQuest(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1364427554newQuest;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1364427554newQuest = param1;
                  if(_loc4_ || _loc3_)
                  {
                     addr0061:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newQuest",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0061);
      }
      
      [Bindable(event="propertyChange")]
      public function get prefixIcon() : BriskImageDynaLib
      {
         return this._1340618197prefixIcon;
      }
      
      public function set prefixIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1340618197prefixIcon;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._1340618197prefixIcon = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prefixIcon",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
   }
}

