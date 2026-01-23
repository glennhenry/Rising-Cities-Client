package net.bigpoint.cityrama.view.quest.ui.components
{
   import net.bigpoint.cityrama.model.detailViews.vo.QuestDetailViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.QuestTaskVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.supportClasses.SkinnableComponent;
   
   public class QuestToolTipComponent extends SkinnableComponent
   {
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc1_))
      {
         _skinParts = {
            "checkmark":true,
            "headerText":true,
            "taskText":false,
            "gfxIcon":false
         };
      }
      
      public var headerText:LocaLabel;
      
      public var checkmark:BriskImageDynaLib;
      
      public var taskText:LocaLabel;
      
      public var gfxIcon:BriskImageDynaLib;
      
      private var _data:QuestDetailViewVo;
      
      private var _dataIsDirty:Boolean;
      
      public function QuestToolTipComponent()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      public function set data(param1:QuestDetailViewVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(RandomUtilities.isEqual(param1,this._data));
            if(_loc2_ || Boolean(this))
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     this._data = param1;
                     if(_loc2_)
                     {
                        this._dataIsDirty = true;
                        if(_loc2_)
                        {
                           §§goto(addr0057);
                        }
                        §§goto(addr0074);
                     }
                     §§goto(addr0095);
                  }
                  addr0057:
                  addr006b:
                  if(this._data.isQuestComplete)
                  {
                     if(_loc2_)
                     {
                        addr0074:
                        this.styleName = "complete";
                        if(_loc3_)
                        {
                        }
                     }
                     addr0095:
                     invalidateProperties();
                  }
                  else
                  {
                     this.styleName = "";
                     if(_loc2_ || Boolean(this))
                     {
                        §§goto(addr0095);
                     }
                  }
                  §§goto(addr009a);
               }
               addr009a:
               return;
            }
            §§goto(addr006b);
         }
         §§goto(addr0057);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc1_:QuestTaskVo = null;
         var _loc2_:QuestTaskVo = null;
         var _loc3_:* = 0;
         if(_loc7_ || Boolean(_loc3_))
         {
            super.commitProperties();
            if(_loc7_)
            {
               §§push(this._dataIsDirty);
               if(_loc7_)
               {
                  §§push(§§pop());
                  if(!(_loc6_ && Boolean(_loc2_)))
                  {
                     §§goto(addr0052);
                  }
                  §§goto(addr0065);
               }
               addr0052:
               var _temp_4:* = §§pop();
               §§push(_temp_4);
               if(_temp_4)
               {
                  if(!(_loc6_ && Boolean(this)))
                  {
                     addr0065:
                     §§pop();
                     if(!_loc6_)
                     {
                        §§goto(addr0071);
                     }
                     §§goto(addr00bf);
                  }
               }
               addr0071:
               §§goto(addr006c);
            }
            addr006c:
            if(Boolean(this._data))
            {
               if(_loc7_ || Boolean(this))
               {
                  addr0083:
                  this._dataIsDirty = false;
                  if(_loc7_ || Boolean(_loc2_))
                  {
                     §§push(this.headerText);
                     if(_loc7_)
                     {
                        if(§§pop())
                        {
                           if(_loc7_ || Boolean(_loc3_))
                           {
                              addr00b6:
                              this.headerText.text = this._data.questHeader;
                              addr00b2:
                           }
                        }
                        §§goto(addr00bf);
                     }
                     §§goto(addr00b6);
                  }
                  §§goto(addr00b2);
               }
               addr00bf:
               for each(_loc2_ in this._data.tasks)
               {
                  if(!_loc6_)
                  {
                     if(!_loc2_.isActive)
                     {
                        continue;
                     }
                  }
                  _loc1_ = _loc2_;
                  break;
               }
               if(_loc7_)
               {
                  §§push(!_loc1_);
                  if(!(_loc6_ && Boolean(_loc1_)))
                  {
                     var _temp_10:* = §§pop();
                     §§push(_temp_10);
                     if(_temp_10)
                     {
                        if(!(_loc6_ && Boolean(this)))
                        {
                           §§pop();
                           if(!_loc6_)
                           {
                              §§push(this._data);
                              if(_loc7_)
                              {
                                 §§push(§§pop().tasks);
                                 if(_loc7_ || Boolean(_loc2_))
                                 {
                                    §§push(Boolean(§§pop().length));
                                    if(!_loc6_)
                                    {
                                       addr0151:
                                       if(§§pop())
                                       {
                                          if(_loc7_)
                                          {
                                             §§push(this._data);
                                             if(_loc7_ || Boolean(_loc3_))
                                             {
                                                addr016d:
                                                §§push(§§pop().tasks);
                                                if(!_loc6_)
                                                {
                                                   addr0176:
                                                   §§push(int(§§pop().length - 1));
                                                   if(_loc7_ || Boolean(_loc1_))
                                                   {
                                                      _loc3_ = §§pop();
                                                      if(_loc7_)
                                                      {
                                                         loop1:
                                                         while(true)
                                                         {
                                                            §§push(_loc3_);
                                                            loop2:
                                                            while(true)
                                                            {
                                                               if(§§pop() >= 0)
                                                               {
                                                                  §§push(QuestTaskVo(this._data.tasks[_loc3_]).isCompleted);
                                                                  if(_loc7_ || Boolean(this))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              addr01d5:
                                                                              _loc1_ = this._data.tasks[_loc3_];
                                                                              addr01ce:
                                                                              addr01d2:
                                                                              §§goto(addr0214);
                                                                           }
                                                                           §§goto(addr029d);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(_loc3_);
                                                                           if(_loc6_ && Boolean(_loc2_))
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() - 1);
                                                                              if(_loc7_)
                                                                              {
                                                                                 _loc3_ = §§pop();
                                                                                 if(_loc6_ && Boolean(_loc3_))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop1;
                                                                              }
                                                                              continue loop2;
                                                                           }
                                                                        }
                                                                     }
                                                                     addr01c4:
                                                                  }
                                                                  break;
                                                               }
                                                               if(_loc7_)
                                                               {
                                                                  addr0214:
                                                                  if(_loc1_)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(this.taskText);
                                                                        if(_loc7_ || Boolean(_loc1_))
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§goto(addr023b);
                                                                              }
                                                                           }
                                                                           §§goto(addr029d);
                                                                        }
                                                                        §§goto(addr0291);
                                                                     }
                                                                     addr023b:
                                                                     §§push(_loc1_.isCompleted);
                                                                     if(!(_loc7_ || Boolean(this)))
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(this.taskText);
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push(_loc1_.finishedTaskText);
                                                                              if(_loc7_ || Boolean(this))
                                                                              {
                                                                                 §§pop().text = §§pop();
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    addr029d:
                                                                                    §§push(this.gfxIcon);
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc7_ || Boolean(_loc1_))
                                                                                          {
                                                                                             addr02bd:
                                                                                             this.gfxIcon.briskDynaVo = _loc1_.getTaskIconVo(true);
                                                                                             addr02b9:
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                addr02cd:
                                                                                                §§push(this.checkmark);
                                                                                                if(_loc7_ || Boolean(_loc2_))
                                                                                                {
                                                                                                   §§goto(addr0385);
                                                                                                }
                                                                                                addr0319:
                                                                                                §§pop().briskDynaVo = new BriskDynaVo("gui_popups_paperPopup","checkmark_green");
                                                                                                if(_loc6_ && Boolean(_loc1_))
                                                                                                {
                                                                                                   addr0381:
                                                                                                   this.taskText.text = "";
                                                                                                   addr037d:
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr0385);
                                                                                       }
                                                                                       §§goto(addr02cd);
                                                                                    }
                                                                                    §§goto(addr02bd);
                                                                                 }
                                                                                 §§goto(addr0385);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr0295:
                                                                                 §§pop().text = §§pop();
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    §§goto(addr029d);
                                                                                 }
                                                                              }
                                                                              §§goto(addr037d);
                                                                           }
                                                                           §§goto(addr0381);
                                                                        }
                                                                        §§goto(addr02f1);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(this.taskText);
                                                                        if(_loc7_ || Boolean(_loc1_))
                                                                        {
                                                                           addr0291:
                                                                           §§goto(addr0295);
                                                                           §§push(_loc1_.taskText);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr0373:
                                                                           if(§§pop())
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§goto(addr037d);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr0385);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(this.taskText);
                                                                     if(_loc7_)
                                                                     {
                                                                        §§goto(addr0373);
                                                                     }
                                                                  }
                                                                  §§goto(addr0381);
                                                               }
                                                               §§goto(addr02cd);
                                                               §§goto(addr02b9);
                                                            }
                                                            break;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            if(_loc7_ || Boolean(this))
                                                            {
                                                               §§push(this.checkmark);
                                                               if(!(_loc6_ && Boolean(this)))
                                                               {
                                                                  §§goto(addr0319);
                                                               }
                                                               else
                                                               {
                                                                  §§pop().briskDynaVo = new BriskDynaVo("gui_popups_paperPopup","checkmark_gray");
                                                                  addr033d:
                                                                  if(_loc6_ && Boolean(this))
                                                                  {
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr0385);
                                                         }
                                                         else
                                                         {
                                                            §§push(this.checkmark);
                                                         }
                                                         §§goto(addr033d);
                                                      }
                                                      §§goto(addr01ce);
                                                   }
                                                   §§goto(addr01f1);
                                                }
                                                §§goto(addr01d5);
                                             }
                                             §§goto(addr01d2);
                                          }
                                          §§goto(addr0385);
                                       }
                                       §§goto(addr0214);
                                    }
                                    §§goto(addr01c4);
                                 }
                                 §§goto(addr0176);
                              }
                              §§goto(addr016d);
                           }
                           §§goto(addr01ce);
                        }
                        §§goto(addr024d);
                     }
                     §§goto(addr0151);
                  }
                  §§goto(addr01c4);
               }
               §§goto(addr0385);
            }
            addr0385:
            if(§§pop())
            {
               if(!(_loc6_ && Boolean(_loc2_)))
               {
                  addr02f1:
                  §§push(_loc1_.isCompleted);
                  break loop2;
               }
            }
            return;
         }
         §§goto(addr0083);
      }
      
      override protected function measure() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            super.measure();
            if(_loc3_)
            {
               if(measuredHeight % 2 != 0)
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     var _loc1_:* = §§findproperty(measuredHeight);
                     var _loc2_:* = _loc1_.measuredHeight + 1;
                     if(_loc3_ || Boolean(_loc2_))
                     {
                        _loc1_.measuredHeight = _loc2_;
                     }
                  }
               }
            }
         }
      }
   }
}

