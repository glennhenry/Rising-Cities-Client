package net.bigpoint.cityrama.model.server.vo.server.player
{
   import net.bigpoint.cityrama.constants.quest.QuestSystemTypeConstants;
   import net.bigpoint.cityrama.model.server.vo.server.player.interfaces.IQuestBookDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.interfaces.IQuestBookMangerDTO;
   
   public class QuestBookManagerVo implements IQuestBookMangerDTO
   {
      
      private var _questBookTutorial:QuestBookServerDTO;
      
      private var _questBookSocial:QuestBookServerDTO;
      
      private var _questBookList:Vector.<IQuestBookDTO>;
      
      private var _questBookEvents:QuestBookServerDTO;
      
      public function QuestBookManagerVo(param1:Object)
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc2_:Object = null;
         var _loc3_:QuestBookServerDTO = null;
         if(!_loc8_)
         {
            super();
            if(!(_loc8_ && Boolean(this)))
            {
               addr0033:
               this._questBookList = new Vector.<IQuestBookDTO>();
            }
            for each(_loc2_ in param1.qb)
            {
               _loc3_ = new QuestBookServerDTO(_loc2_);
               if(_loc8_ && Boolean(_loc3_))
               {
                  continue;
               }
               this._questBookList.push(_loc3_);
               if(_loc8_)
               {
                  continue;
               }
               var _loc6_:* = _loc3_.type;
               if(_loc7_ || Boolean(_loc3_))
               {
                  §§push(QuestSystemTypeConstants.SOCIAL);
                  if(!_loc8_)
                  {
                     §§push(_loc6_);
                     if(!_loc8_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(!(_loc8_ && Boolean(this)))
                           {
                              addr0114:
                              §§push(0);
                              if(_loc7_ || Boolean(_loc3_))
                              {
                              }
                           }
                           else
                           {
                              addr017a:
                              §§push(2);
                              if(_loc7_)
                              {
                              }
                           }
                           addr0192:
                           switch(§§pop())
                           {
                              case 0:
                                 this._questBookSocial = _loc3_;
                                 if(_loc8_ && Boolean(_loc3_))
                                 {
                                 }
                                 break;
                              case 1:
                                 this._questBookTutorial = _loc3_;
                                 if(_loc8_)
                                 {
                                 }
                                 break;
                              case 2:
                                 this._questBookEvents = _loc3_;
                                 if(_loc7_ || Boolean(param1))
                                 {
                                 }
                           }
                        }
                        else
                        {
                           §§push(QuestSystemTypeConstants.TUTORIAL);
                           if(!(_loc8_ && Boolean(_loc3_)))
                           {
                              addr013c:
                              §§push(_loc6_);
                              if(!_loc8_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!(_loc8_ && Boolean(_loc2_)))
                                    {
                                       §§push(1);
                                       if(_loc7_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr017a);
                                    }
                                 }
                                 else
                                 {
                                    addr0176:
                                    addr0174:
                                    if(QuestSystemTypeConstants.EVENT === _loc6_)
                                    {
                                       §§goto(addr017a);
                                    }
                                    else
                                    {
                                       §§push(3);
                                    }
                                 }
                                 §§goto(addr0192);
                              }
                              §§goto(addr0176);
                           }
                           §§goto(addr0174);
                        }
                        §§goto(addr017a);
                     }
                     §§goto(addr0176);
                  }
                  §§goto(addr013c);
               }
               §§goto(addr0114);
            }
            return;
         }
         §§goto(addr0033);
      }
      
      public function set questBookSocial(param1:QuestBookServerDTO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._questBookSocial = param1;
         }
      }
      
      public function get questBookList() : Vector.<IQuestBookDTO>
      {
         return this._questBookList;
      }
      
      public function get questBookTutorial() : QuestBookServerDTO
      {
         return this._questBookTutorial;
      }
      
      public function get questBookSocial() : QuestBookServerDTO
      {
         return this._questBookSocial;
      }
   }
}

