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
      
      private var _tabs:ArrayCollection;
      
      private var _currentIndex:int;
      
      private var _currentQuest:QuestDetailViewVo;
      
      public function QuestTabProxy()
      {
         var _loc1_:TabsVo = null;
         super(NAME);
         this._tabs = new ArrayCollection();
         _loc1_ = new TabsVo();
         _loc1_.styleName = QUEST_DETAIL_VIEW_STYLE;
         _loc1_.tabLabel = LocaUtils.getString("rcl.questbook.layer","rcl.questbook.layer.title");
         _loc1_.enabled = true;
         _loc1_.hasNews = false;
         this._tabs.addItem(_loc1_);
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
         this._currentIndex = param1;
      }
      
      public function set currentQuest(param1:QuestDetailViewVo) : void
      {
         this._currentQuest = param1;
      }
      
      public function get currentQuest() : QuestDetailViewVo
      {
         return this._currentQuest;
      }
   }
}

