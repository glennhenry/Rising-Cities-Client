package net.bigpoint.cityrama.model.quest
{
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.model.detailViews.vo.QuestDetailViewVo;
   import net.bigpoint.cityrama.model.featureditems.RisingCitiesProxy;
   import net.bigpoint.cityrama.model.friends.vo.TabsVo;
   import net.bigpoint.util.LocaUtils;
   
   public class QuestTabProxy extends RisingCitiesProxy
   {
      
      public static const NAME:String = "QuestTabProxy";
      
      private static const QUEST_DETAIL_VIEW_STYLE:String = "questDetailView";
      
      public static const QUEST_DETAIL_TAB_INDEX:int = 0;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         NAME = "QuestTabProxy";
         if(!_loc2_)
         {
            QUEST_DETAIL_VIEW_STYLE = "questDetailView";
            if(_loc1_ || QuestTabProxy)
            {
               addr0041:
               QUEST_DETAIL_TAB_INDEX = 0;
            }
            return;
         }
      }
      §§goto(addr0041);
      
      private var _tabs:ArrayCollection;
      
      private var _currentIndex:int;
      
      private var _currentQuest:QuestDetailViewVo;
      
      public function QuestTabProxy()
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:TabsVo = null;
         if(_loc2_ || _loc3_)
         {
            super(NAME);
            if(_loc2_ || _loc3_)
            {
               this._tabs = new ArrayCollection();
            }
         }
         _loc1_ = new TabsVo();
         if(!_loc3_)
         {
            _loc1_.styleName = QUEST_DETAIL_VIEW_STYLE;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.tabLabel = LocaUtils.getString("rcl.questbook.layer","rcl.questbook.layer.title");
               if(_loc2_ || _loc2_)
               {
                  §§goto(addr0096);
               }
            }
            §§goto(addr00a8);
         }
         addr0096:
         _loc1_.enabled = true;
         if(_loc2_ || _loc2_)
         {
            addr00a8:
            _loc1_.hasNews = false;
            if(!_loc3_)
            {
               this._tabs.addItem(_loc1_);
            }
         }
      }
      
      public function get tabs() : ArrayCollection
      {
         return this._tabs;
      }
      
      public function get currentIndex() : int
      {
         return this._currentIndex;
      }
      
      public function set currentIndex(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this._currentIndex = param1;
         }
      }
      
      public function set currentQuest(param1:QuestDetailViewVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._currentQuest = param1;
         }
      }
      
      public function get currentQuest() : QuestDetailViewVo
      {
         return this._currentQuest;
      }
   }
}

