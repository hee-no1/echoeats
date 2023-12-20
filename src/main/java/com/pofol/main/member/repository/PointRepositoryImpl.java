package com.pofol.main.member.repository;

import com.pofol.main.member.dto.PointDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class PointRepositoryImpl implements PointRepository{
    @Autowired
    private SqlSession session;
    private final String namespace = "com.pofol.main.member.pointMapper.";

    @Override
    public int insertPoint(PointDto pointDto) throws Exception {
        return session.insert(namespace + "insert_point", pointDto);
    }

    @Override
    public List<PointDto> selectAllPoint(String mem_id) throws Exception {
        return session.selectList(namespace + "selectAll_point", mem_id);
    }

    @Override
    public PointDto selectPoint(String point_id) throws Exception {
        return session.selectOne(namespace + "select_point", point_id);
    }

    @Override
    public int updatePoint(PointDto pointDto) throws Exception {
        return session.update(namespace + "update_point", pointDto);
    }

    @Override
    public int deletePoint(String point_id) throws Exception {
        return session.delete(namespace + "delete_point", point_id);
    }

    @Override
    public int sumPoint(String mem_id) throws Exception {
        Integer sumPoint = session.selectOne(namespace + "sum_point", mem_id);
        return sumPoint != null ? sumPoint : 0;
    }

    @Override
    public int accumulatePoint(String mem_id) throws Exception {
        Integer accumulatePoint = session.selectOne(namespace + "accumulate_point",mem_id);
        return accumulatePoint != null ? accumulatePoint : 0;
    }

    @Override
    public int usePoint(String mem_id) throws Exception {
        Integer usePoint = session.selectOne(namespace + "use_point",mem_id);
        return usePoint != null ? usePoint : 0;
    }

    @Override
    public int countPoint(String mem_id) throws Exception {
        Integer countPoint = session.selectOne(namespace + "count_point", mem_id);
        return countPoint != null ? countPoint : 0;
    }

    @Override
    public int preExtinctPoint(String mem_id) throws Exception {
        Integer preExtinctPoint = session.selectOne(namespace + "preExtinct_point", mem_id);
        return preExtinctPoint != null ? preExtinctPoint : 0;
    }
}
