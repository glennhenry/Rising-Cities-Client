package net.bigpoint.cityrama.view.quest.ui.components
{
   import net.bigpoint.cityrama.model.detailViews.vo.QuestTaskVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.supportClasses.SkinnableComponent;
   
   public class QuestTaskComponent extends SkinnableComponent
   {
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || QuestTaskComponent)
      {
         _skinParts = {
            "headerText":true,
            "gfxIcon":true
         };
      }
      
      private var _data:QuestTaskVo;
      
      private var _dataIsDirty:Boolean;
      
      public var gfxIcon:BriskImageDynaLib;
      
      public var headerText:LocaLabel;
      
      public function QuestTaskComponent()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      public function set data(param1:QuestTaskVo) : void
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
                  this._dataIsDirty = true;
                  if(!_loc3_)
                  {
                     addr0043:
                     invalidateProperties();
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr0055:
                        this._data = param1;
                     }
                  }
                  §§goto(addr005a);
               }
               §§goto(addr0043);
            }
            addr005a:
            return;
         }
         §§goto(addr0055);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super.commitProperties();
            if(_loc2_ || _loc2_)
            {
               if(this._dataIsDirty)
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     addr0045:
                     this._dataIsDirty = false;
                     if(_loc2_)
                     {
                        addr0059:
                        §§push(this.gfxIcon);
                        if(!_loc1_)
                        {
                           if(§§pop())
                           {
                              if(_loc2_ || Boolean(this))
                              {
                                 addr0077:
                                 §§push(this.gfxIcon);
                                 §§push("task");
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    §§push(§§pop() + this._data.gfxId.toString());
                                 }
                                 §§pop().dynaBmpSourceName = §§pop();
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr00ac:
                                    §§push(this.headerText);
                                    if(_loc2_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc1_)
                                          {
                                             addr00c2:
                                             this.headerText.text = this._data.taskText;
                                             addr00be:
                                          }
                                       }
                                       §§goto(addr00cb);
                                    }
                                    §§goto(addr00c2);
                                 }
                              }
                              §§goto(addr00cb);
                           }
                           §§goto(addr00ac);
                        }
                        §§goto(addr0077);
                     }
                     §§goto(addr00be);
                  }
               }
               addr00cb:
               return;
            }
            §§goto(addr0045);
         }
         §§goto(addr0059);
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            super.partAdded(param1,param2);
            if(_loc3_)
            {
               §§goto(addr002c);
            }
            §§goto(addr005a);
         }
         addr002c:
         if(this._data)
         {
            if(_loc3_)
            {
               if(param2 == this.gfxIcon)
               {
                  if(_loc3_ || Boolean(param1))
                  {
                     addr005a:
                     §§push(this.gfxIcon);
                     §§push("task");
                     if(!_loc4_)
                     {
                        §§push(§§pop() + this._data.gfxId.toString());
                     }
                     §§pop().dynaBmpSourceName = §§pop();
                     if(_loc4_)
                     {
                        addr00a3:
                        this.headerText.text = this._data.taskText;
                     }
                     §§goto(addr00b0);
                  }
                  §§goto(addr00a3);
               }
               else if(param2 == this.headerText)
               {
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr00a3);
                  }
               }
            }
         }
         addr00b0:
      }
   }
}

